/* Somme des multiples de 3 et 5 du nombre 10000 */

var multTrois=[];
var multCinq=[];
var Somme=0;

for(i=0;i<1000;i++) {
    if(i%3 === 0) {
        multTrois.push(i);
    } else if(i%5 === 0) {
        multCinq.push(i);
    }
}

for(i=0;i<multTrois.length;i++) {
    Somme+=multTrois[i];
}

for(i=0;i<multCinq.length;i++) {
    Somme+=multCinq[i];
}

console.log("Le résultat est: " + Somme);