http://paulbourke.net/dataformats/lightwave/

Lightwave 3D Object File Format
by Allen Hastings & Stuart Ferguson
revised 11/28/94
Introduction

  LightWave 3D objects are stored as IFF files with a FORM type of
  LWOB.  A FORM LWOB must contain a PNTS chunk, a SRFS chunk, and a
  POLS chunk.  There may be zero or more SURF chunks anywhere in the
  file and up to one CRVS chunk.  The POLS and CRVS chunks must be
  preceded by the PNTS chunk and the SRFS chunk.  LightWave 2.0 also
  has the ability to save and load surface descriptions as FORM LWOB
  files that contain only a SURF chunk.

  This document explains the contents of each chunk and includes an
  annotated listing of a FORM LWOB as an example.


PNTS Chunk

  This chunk contains a list of the X, Y, and Z coordinates of all
  the points in an object.  Each coordinate is stored as a four byte
  floating point number in IEEE format.  Therefore, the number of
  points in an object can be determined by dividing the size in bytes
  of the PNTS chunk by 12.

  By convention, the +X direction is to the right or east, the +Y
  direction is upward, and the +Z direction is forward or north.
  For models of real-world objects, the unit size is usually
  considered to be one meter.  The coordinates are specified relative
  to an object's pivot point.  See the LightWave Modeler manual for
  more information about LightWave 3D's geometric conventions.


SRFS Chunk

  This chunk contains a list of the names of all the surfaces in an
  object (note that in LightWave 3D terminology, the word "surface"
  is defined as a set of attributes that describe the color and
  shading characteristics of a group of polygons).  Each surface name
  appears as a null-terminated character string.  If the length of
  the string (including the null) is odd, an extra null byte is
  added.  Surface names should be read from the file until as many
  bytes as the chunk size specifies have been read.


POLS Chunk

  This chunk contains a list of all the polygons in an object.  Each
  entry consists of a short integer specifying the number of vertices
  in a polygon followed by that many short integers specifying the
  vertices themselves (as indices into the points list) followed by a
  short integer specifying which surface is used by the polygon (as
  an index into the surfaces list).  The number of vertices in a
  polygon currently may vary from one to 200.  The vertex list for
  each polygon should begin at a convex vertex and proceed clockwise
  as seen from the visible side of the polygon (LightWave 3D polygons
  are single-sided, except for those whose surfaces have the double-
  sided flag set).  The points list in the PNTS chunk is numbered
  starting with zero and the surfaces list in the SRFS chunk is
  numbered starting with one (so that surface numbers can be made
  negative to signal the presence of detail polygons as explained
  below).  Polygons should be read from the file until as many bytes
  as the chunk size specifies have been read.

  A negative surface number for a polygon indicates that the polygon
  has detail polygons (which are drawn on top of the main polygon and
  may be coplanar with it).  In this case, the next number in the
  file is a short integer specifying how many detail polygons belong
  to the current polygon.  This is followed by a list of those detail
  polygons, where each entry is of the same format as described above
  for regular polygons (except that the detail polygons cannot have
  details of their own).  The list of regular polygons then resumes.
  To determine which surface is used by a polygon with a negative
  surface number, the absolute value of that number should be used.


CRVS Chunks

  This chunk contains a list of all the spline curves in an object. 
  Each entry consists of a short integer specifying the number of
  vertices in a curve followed by that many short integers specifying
  the vertices themselves in sequential order, followed by a short
  integer specifying which surface is used by the curve, followed by
  another short integer specifying bit-flags associated with the
  curve.  If bit zero is set then the first point is a continuity
  control point, and if bit one is set then the last point is.  The
  point and surface indices are as they are in the POLS chunk, except
  that curves cannot have details.  Curves should be read from the
  file until as many bytes as the chunk size specifies have been read.


SURF Chunks

  Each SURF chunk describes the surface attributes of a particular
  surface.  These chunks begin with the name of the surface being
  described.  The name is stored as a character string with either
  one or two trailing nulls (as explained in the SRFS chunk section).
  Following the name is a series of sub-chunks, which are like normal
  IFF chunks except that their sizes are specified by short integers
  instead of longs.  It is likely that the variety of sub-chunks will
  grow as new surface attributes are added to the program, but any
  unknown sub-chunks may be skipped over in the usual IFF fashion.
  Sub-chunks should be read from the file until as many bytes as the
  chunk size specifies have been read.

  COLR Sub-Chunk

    This sub-chunk consists of three bytes that specify the red,
    green, and blue color components of the current surface, followed
    by a byte which is currently ignored and should be zero.  A
    surface can therefore be any of 16,777,216 possible colors.

  FLAG Sub-Chunk

    This sub-chunk contains a short integer whose bits specify
    various options for the current surface.  Currently only the
    nine least significant bits are used.  The options that set bits
    indicate are (starting with the least significant bit):
    Luminous, Outline, Smoothing, Color Highlights, Color Filter,
    Opaque Edge, Transparent Edge, Sharp Terminator, Double Sided,
    and Additive (which is new for LW 3.0).  Note that the two edge
    transparency bits should not both be set.

  LUMI, DIFF, SPEC, REFL, and TRAN Sub-Chunks

    Each of these sub-chunks contain a short integer that specifies
    the current surface's luminosity, diffuse, specular, reflection,
    or transparency settings (the LUMI sub-chunk is new for LW 3.0,
    and replaces the Luminous bit of the FLAG sub-chunk).  A value of
    256 in the file corresponds to a setting of 100% on the control
    panel.  If any of these sub-chunks are absent for a surface, a
    value of zero is assumed for the corresponding parameter.

  GLOS Sub-Chunk

    This sub-chunk contains a short integer that specifies the
    glossiness of the current surface, and is only needed if the
    specular setting in the SPEC sub-chunk is non-zero.  A value of
    16 indicates low glossiness, 64 indicates medium glossiness, 256
    indicates high glossiness, and 1024 indicates maximum glossiness
    (the maximum setting is new for LW 3.0).  This parameter is
    related to the "specular exponent" used in many lighting models.

  RIMG Sub-Chunk

    This sub-chunk contains the filename (including any path the user
    may have specified) of the image to be used as a reflection map
    for the current surface.  Once again, if the length of the string
    (including the terminating null) is odd, another null is added.
    If the last part of the string is " (sequence)", then the first
    part of the string specifies the prefix of an image sequence (the
    actual filename in this case is generated by appending a three
    digit frame number to the prefix when loading the image file for
    each frame).  If the reflection setting in the REFL sub-chunk is
    non-zero but no RIMG sub-chunk is present, then the surface is
    assumed to reflect the sky and ground backdrop (or to use ray
    traced reflection if ray tracing is enabled).

  RSAN Sub-Chunk

    This sub-chunk contains a four byte IEEE floating point number
    that specifies the heading angle of the reflection map seam
    (expressed in degrees).  This is new for LW 3.0.

  RIND Sub-Chunk

    This sub-chunk contains a four byte IEEE floating point number
    that specifies the current surface's refractive index, which is
    defined as the ratio of the speed of light in a vacuum to the
    speed of light in the material.  Since light is fastest in a
    vacuum, this value should therefore be greater than or equal to
    1.0.

  EDGE Sub-Chunk

    This sub-chunk contains a four byte IEEE floating point number
    that specifies the edge transparency threshold of the current
    surface.  This value should lie between 0.0 and 1.0.

  SMAN Sub-Chunk

    This sub-chunk contains a four byte IEEE floating point number
    that specifies the maximum angle between two adjacent polygons
    that can be smooth shaded (expressed in degrees).  Polygons with
    a greater angle between them will appear to meet at a sharp seam.
    This is new for LW 3.0.

  CTEX, DTEX, STEX, RTEX, TTEX, and BTEX Sub-Chunks

    The presence of one of these sub-chunks indicates that the
    current surface has a color, diffuse, specular, reflection,
    transparency, or bump texture.  The contents of the sub-chunk is
    a character string (terminated by one or two nulls as usual)
    specifying the texture type as shown on the control panel.  Once
    one of these sub-chunks is encountered within a SURF chunk, all
    subsequent texture-related sub-chunks (those described below) are
    considered to pertain to the current texture, until another CTEX,
    DTEX, STEX, RTEX, TTEX, or BTEX sub-chunk is read.  Currently
    there may be zero or one of each of these sub-chunks (up to six
    textures) in each SURF chunk.

  TIMG Sub-Chunk

    This sub-chunk specifies the filename of the image (or the prefix
    of the image sequence) to be used for image texture mapping.  See
    the description of the RIMG sub-chunk above for more details.

  TFLG Sub-Chunk

    This sub-chunk contains a short integer whose bits specify
    various options for the current texture.  Currently only the
    seven least significant bits are used.  The options that set bits
    indicate are (starting with the least significant bit):  X Axis,
    Y Axis, Z Axis, World Coords, Negative Image, Pixel Blending, and
    Antialiasing.  Note that only one of the three axis bits should
    be set.

  TSIZ, TCTR, TFAL, and TVEL Sub-Chunks

    These sub-chunks each consist of three IEEE four byte floating
    point numbers that specify the X, Y, and Z components of the
    current texture's size, center, falloff, or velocity.  The TCTR,
    TFAL, and TVEL sub-chunks are only needed if the corresponding
    parameters are non-zero.

  TCLR Sub-Chunk

    This sub-chunk contains four bytes that specify the texture color
    for the current texture, which should be of the color-modifying
    variety (in other words, there should be a CTEX sub-chunk
    somewhere before this sub-chunk).  The bytes are interpreted as
    described above in the COLR sub-chunk section.

  TVAL Sub-Chunk

    This sub-chunk contains a short integer that specifies the
    texture value of a diffuse, specular, reflection, or transparency
    texture, so it should appear somewhere after a DTEX, STEX, RTEX,
    or TTEX sub-chunk.  A value of 256 in the file corresponds to a
    a setting of 100% on the control panel.

  TAMP Sub-Chunk

    This sub-chunk contains a four byte IEEE floating point number
    that specifies the amplitude of the current bump texture, so it
    should appear somewhere after a BTEX sub-chunk.  A value of 1.0
    is equivalent to a setting of 100% on the control panel.

  TFRQ Sub-Chunk

    This sub-chunk contains a short integer that specifies the number
    of noise frequencies or wave sources used by the current texture.

  TSP0, TSP1, and TSP2 Sub-Chunks

    These sub-chunks each contain a four byte IEEE floating point
    number that specifies one of the special texture type-specific
    parameters (such as Contrast, Turbulence, Wavelength, etc).
    Which sub-chunk is used to record a particular parameter depends
    on the order in which that parameter's button appears on the
    control panel.  In the future there may be more than three of
    these per texture.


Object File Example

  A simple object (with somewhat complex surfaces) is listed below to
  illustrate some of the features of a FORM LWOB.  The object is an
  image-mapped bumpy square polygon in the XY plane with a shiny
  transparent yellow triangle as a detail polygon.  Each line of the
  listing shows 16 bytes in hexadecimal form followed by their ASCII
  equivalents.  The notes under each line should be read from left to
  right rather than top to bottom.

  464F524D 0000019C 4C574F42 504E5453    FORM....LWOBPNTS
  00000054 3F800000 3F800000 00000000    ...T?...?.......
           ^^^^^^^^ ^^^^^^^^ ^^^^^^^^
           The X, Y, and Z coordinates of point number zero are 1.0,
           1.0, and 0.0 (in IEEE format).
      ^^^^
      There are 84 bytes in the PNTS chunk, so there are seven points
      in the object.

  BF800000 3F800000 00000000 3F800000    ....?.......?...
  BF800000 00000000 BF800000 BF800000    ................
  00000000 3F000000 BF000000 00000000    ....?...........
  00000000 3F000000 00000000 BF000000    ....?...........
  BF000000 00000000 53524653 00000012    ........SRFS....
  53717561 72650000 54726961 6E676C65    Square..Triangle
               ^^^^
               The surface name "Square" is terminated with two nulls
               to even out the number of bytes.

  0000504F 4C530000 00180004 00010000    ..POLS..........
                        ^^^^
                        The first polygon has four vertices (which
                        are points 1, 0, 2, and 3).

  00020003 FFFF0001 00030005 00040006    ................
                    ^^^^
                    The detail polygon has three vertices (which are
                    points 5, 4, and 6).
               ^^^^
               One detail polygon follows.
           ^^^^
           The first polygon's surface code is -1, so it uses surface
           number one ("Square") and has detail polygons.

  00025355 52460000 00AE5371 75617265    ..SURF....Square
      ^^^^ ^^^^
      This begins the description of the surface called "Square".
  ^^^^
  The detail polygon uses surface number two ("Triangle").

  0000434F 4C520004 C8C8C800 464C4147    ..COLR......FLAG
  00020000 44494646 00020100 43544558    ....DIFF....CTEX
                             ^^^^^^^^
                             The next set of texture sub-chunks
                             pertain to the surface's color texture.
                        ^^^^
                        The "Square" surface's diffuse setting is
                        100% (256 out of 256).

  0012506C 616E6172 20496D61 6765204D    ..Planar Image M
      ^^^^ ^^^^^^^^ ^^^^^^^^ ^^^^^^^^
      The color texture is planar mapping of the image in the IFF
      file "RAM:Laura".

  61700000 54494D47 000A5241 4D3A4C61    ap..TIMG..RAM:La
  75726100 54464C47 00020004 5453495A    ura.TFLG....TSIZ
                        ^^^^
                        The flag bits indicate that the image is to
                        be projected along the Z axis.

  000C4000 00003FC0 00003F80 00005443    ..@...?...?...TC
      ^^^^ ^^^^^^^^ ^^^^^^^^ ^^^^
      The X, Y, and Z texture sizes are 2.0, 1.5, and 1.0.

  4C520004 00000000 42544558 000E4672    LR......BTEX..Fr
                    ^^^^^^^^
                    The next set of texture sub-chunks pertain to the
                    "Square" surface's bump texture.

  61637461 6C204275 6D707300 54464C47    actal Bumps.TFLG
  0002000A 5453495A 000C3DCC CCCD3DCC    ....TSIZ..=...=.
      ^^^^
      The flag bits indicate that "Worlds Coords" is turned on.

  CCCD3DCC CCCD5441 4D500004 3FC00000    ..=...TAMP..?...
                             ^^^^^^^^
                             The amplitude of the bumps is 150% (1.5
                             in IEEE format).

  54465251 00020001 53555246 00000044    TFRQ....SURF...D
                    ^^^^^^^^
                    This begins the description of the surface called
                    "Triangle".
               ^^^^
               The bump texture uses one frequency of noise.

  54726961 6E676C65 0000434F 4C520004    Triangle..COLR..
  F0B40000 464C4147 00020000 44494646    ....FLAG....DIFF
  ^^^^^^^^
  The "Triangle" surface's color is yellow (240 red, 180 green, and 0
  blue).

  0002009A 53504543 000200CD 474C4F53    ....SPEC....GLOS
                        ^^^^
                        The surface's specular setting is 80 % (205
                        out of 256).

  00020100 5245464C 00020033 5452414E    ....REFL...3TRAN
                        ^^^^
                        The surface's reflection map setting is 20%
                        (51 out of 256), but there is no RIMG sub-
                        chunk, so the surface reflects the backdrop.
      ^^^^
      The surface has a high glossiness (256).

  00020066                               ...f
      ^^^^
      The surface is 40% transparent (102 out of 256).

  The "Triangle" surface has no textures, and there are no more
  surfaces to be defined, so the object file ends here.
