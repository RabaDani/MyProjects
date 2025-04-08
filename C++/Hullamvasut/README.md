# Description (English)

1. Assignment Description
In this task, you are required to implement a 2D roller coaster simulation. The roller coaster track is defined by a Catmull-Rom spline, specified by its control points. The spline uses uniform parameterization, meaning the difference between the knot values of any two consecutive control points is the same. At the very first and last control points, the velocity vector used for Hermite interpolation (i.e., the derivative of the spline with respect to the parameter) is zero.

The virtual camera displays a 20 m × 20 m region. In this world, the gravitational acceleration is 
𝑔 = 40 m/s², directed along the negative y-axis.

Control points for the track can be created by pressing the left mouse button at the cursor’s position. These control points are displayed as red squares (RGB = 1, 0, 0) using the GL_POINT primitive. The point size is 10. If at least two control points exist, a spline is fitted through them and also rendered, in yellow (RGB = 1, 1, 0). The line thickness is 3 pixels. Red control points visually override the yellow spline curve (i.e., they appear on top).

Pressing the SPACE key launches a wheel from the spline point at parameter value 0.01, starting from rest. The wheel is a filled blue (RGB = 0, 0, 1) disk with a radius of 1 meter, a white (RGB = 1, 1, 1) circular outline, and at least two white spokes. The mass of the wheel is evenly distributed along the circumference; the axle and the spokes are weightless. The wheel rolls along the track.

The velocity vector of the motion (i.e., the tangent to the curve) must be calculated analytically — approximate differentiation is not accurate enough.

The rail can only push the cart, not pull it. If such a situation arises, it means the cart has left the track and should be removed in any manner you choose. If the cart would start moving backward, it must be teleported to the starting point (the first control point of the spline), and the simulation must restart from rest.

1. Feladatkiírás

Ebben a feladatban egy 2D hullámvasút szimulációt kell megvalósítani. A hullámvasút pályája Catmull-Rom spline, amelyet a kontrollpontjai definiálnak. A spline uniform paraméterezésű, azaz a csomóértékek közötti különbség minden két egymás utáni kontrollpontra ugyanaz. A legelső és legutolsó kontrollpontban az Hermite interpolációhoz használt sebességvektor (azaz a spline paraméter szerinti deriváltja) zérus.

Virtuális kamera: A kamera egy 20 m x 20 m-es tartományt mutat be.

Gravitáció: A világban a nehézségi gyorsulás 𝑔 = 40 m/s², iránya pedig a –y tengely.

A pálya kontrollpontjai az egér bal gombjával hozhatók létre a kurzor helyén. A kontrollpontokat a program piros (RGB=1,0,0) négyzetként (GL_POINT primitívvel) jeleníti meg, a pontméret 10. Ha legalább két kontrollpont létezik, a kontrollpontokra spline-t illeszt, és azt is megjeleníti, mégpedig sárgával (RGB=1,1,0). A vonalvastagság 3 pixel. A piros kontrollpontok takarják a sárga spline görbét.

A SPACE hatására a görbe 0.01 paraméterű pontjából, álló helyzetből indítunk egy kereket. A kerék kitöltött kék (RGB=0,0,1) színű, 1 m sugarú körlap fehér (RGB=1,1,1) körvonallal, és legalább két fehér küllővel. A kerék tömege a körvonalon egyenletesen oszlik el, a tengely és a küllők súlytalanok. A kerék gördül a pályán.

A mozgás sebességvektorát (a görbe érintőjét) analitikusan kell számítani, a közelítő differenciálás nem elegendő pontoságú. A sín csak nyomni tudja a vasutat, húzni nem, ha ilyen fordulna elő, akkor az azt jelenti, hogy a kocsi lerepült a sínről, és emiatt tetszés szerinti módon el kell tüntetni. Ha a kocsi elindulna visszafelé, akkor a kezdőpontba (a spline legelső kontrollpontja) kell teleportálni, és a szimulációt álló helyzetből indulva újrakezdeni.

![alt text](image.png)