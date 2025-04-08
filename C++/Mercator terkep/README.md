# Description (English)

The goal of the task is to draw the shortest paths between selected points on a Mercator map, assuming a spherical Earth with a circumference of 40,000 km, and to print the traveled distances to the console. The map covers the latitude range from -85 to +85 degrees and the longitude range from -180 to +180 degrees.

Route waypoints can be placed at the cursor position by clicking the left mouse button. The map is associated with a 64×64 resolution texture, displayed with GL_NEAREST filtering, which is defined by an indexed color, run-length encoded image.

In this encoding, for each byte, the upper 6 bits (denoted as H) and the lower 2 bits (I) define that H + 1 pixels of color index I are to be placed sequentially. The color indices mean:

I = 0: maximum intensity white

I = 1: maximum intensity blue

I = 2: maximum intensity green

I = 3: black

The image is defined by the following unsigned bytes:
[a long sequence of bytes follows in the original]

For rendering the map, each pixel must be checked to determine whether it is in daylight or nighttime. At nighttime, the colors must be set to 50% intensity. The program starts with the current time set to the summer solstice at 0:00 GMT. Pressing the n key advances the time by one hour without changing the date. The tilt of the Earth’s axis is approximately 23 degrees.

Between two waypoints, the great circle path on the sphere must be drawn as a polyline consisting of 100 points, with a line thickness of 3 and a color of maximum intensity yellow.

Waypoints are drawn as 10-pixel dots in maximum intensity red. Waypoints have higher visual priority than the paths. The time of day does not affect the colors of the paths or waypoints.

# Description (Magyar)

A feladat célja, hogy a kiválasztott pontok között a legrövidebb utakat ábrázoljuk egy Mercator-vetületes térképen, figyelembe véve a gömb alakú Földet, amelynek kerülete 40 000 km, és kiírjuk az elért távolságokat a konzolra. A térkép a -85 és +85 fok közötti szélességi, valamint -180 és +180 fok közötti hosszúsági tartományt öleli fel.

Útvonalpontokat a bal egérgombbal helyezhetünk el a kurzor pozíciójában. A térkép egy 64×64-es felbontású textúrával van társítva, amely GL_NEAREST szűréssel jelenik meg, és egy indexelt színű, futásmentes kódolású képet tartalmaz.

Ebben a kódolásban minden egyes bájt felső 6 bitje (H) és alsó 2 bitje (I) meghatározza, hogy H + 1 pixel színindexet I-ként kell egymás után elhelyezni. A színindexek jelentése a következő:

I = 0: maximális intenzitású fehér

I = 1: maximális intenzitású kék

I = 2: maximális intenzitású zöld

I = 3: fekete

A kép az alábbi unsigned bájtokkal van definiálva: [a további bájtok hosszú sora következik az eredetiben]

A térkép rendereléséhez minden egyes pixelt ellenőrizni kell, hogy nappali vagy éjszakai időszakban van-e. Éjszaka a színeket 50%-os intenzitásra kell állítani. A program nyári napfordulókor, 0:00 GMT-ként kezdődik. Az 'n' billentyű megnyomásával az idő egy órával előre léptethető, anélkül, hogy a dátum változna. A Föld tengelyferdülése körülbelül 23 fok.

Két útvonalpont között a nagy körű utat kell ábrázolni a gömbön, egy 100 pontból álló polilíniaként, 3-as vastagsággal és maximális intenzitású sárga színnel.

Az útvonalpontokat 10 pixeles piros pontokként kell ábrázolni maximális intenzitású színnel. Az útvonalpontok nagyobb vizuális prioritást élveznek, mint az útvonalak. A nappali és éjszakai időszakok nem befolyásolják az útvonalak és útvonalpontok színét.

![alt text](image.png)
