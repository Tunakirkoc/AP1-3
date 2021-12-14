// recapitulation du formulaire apres validation
function recapitulatif() {
    var recap = "Personne concernée : ";
    recap += document.getElementById("nom").value;
    recap += " ";
    recap += document.getElementById("prenom").value;
    recap += " - ";
    recap += document.getElementById("poste").value;
    recap += "\n";
    recap += "Matériel : ";
    if (document.getElementById("materielBureau").checked) recap += "Bureau";
    if (document.getElementById("materielPortable").checked) recap += "Portable";
    recap += "\n";
    recap += "Modèle : ";
    recap += document.getElementById("modele").value;
    recap += "\n";
    recap += "Systeme d'exploitation : ";
    if (document.getElementById("osWindows10").checked) recap += "Windows 10";
    if (document.getElementById("osWindows11").checked) recap += "Windows 11";
    recap += "\n";
    recap += "Processeur : ";
    recap += document.getElementById("processeur").value;
    recap += "\n";
    recap += "RAM : ";
    recap += document.getElementById("ram").value;
    recap += "\n";
    recap += "Stockage : ";
    recap += document.getElementById("stockage").value;
    recap += "\n";
    recap += "Ecran : ";
    recap += document.getElementById("ecran").value;
    recap += "\n";
    recap += "Carte graphique : ";
    recap += document.getElementById("cartegraphique").value;
    // inner divrecap pour afficher le recapitulatif
    document.getElementById("divrecap").innerHTML = recap;
    // var recap to file download
    var link = document.createElement('a');
    link.href = 'data:text/plain;charset=utf-8,' + encodeURIComponent(recap);
    link.download = 'recapitulatif.txt';
    link.click();
    // Debug
    console.log(recap)
}