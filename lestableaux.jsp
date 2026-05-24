<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>

<p>
<%
int valeur1 = Integer.parseInt(tableauDeChiffres[0]);
%>
Carré : <%= valeur1 * valeur1 %>
</p>


<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>

<p>
<%
int v1 = Integer.parseInt(tableauDeChiffres[0]);
int v2 = Integer.parseInt(tableauDeChiffres[1]);
%>
Somme : <%= v1 + v2 %>
</p>


<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>

<p>
<%
int somme = 0;

for(int i = 0; i < tableauDeChiffres.length; i++) {
    somme += Integer.parseInt(tableauDeChiffres[i]);
}
%>
Somme totale : <%= somme %>
</p>


<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>

<p>
<%
int max = Integer.parseInt(tableauDeChiffres[0]);

for(int i = 1; i < tableauDeChiffres.length; i++) {
    int val = Integer.parseInt(tableauDeChiffres[i]);
    if(val > max) {
        max = val;
    }
}
%>
Max : <%= max %>
</p>

<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>

<p>
<%
int min = Integer.parseInt(tableauDeChiffres[0]);

for(int i = 1; i < tableauDeChiffres.length; i++) {
    int val = Integer.parseInt(tableauDeChiffres[i]);
    if(val < min) {
        min = val;
    }
}
%>
Min : <%= min %>
</p>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>

<p>
<%
int proche = Integer.parseInt(tableauDeChiffres[0]);

for(int i = 1; i < tableauDeChiffres.length; i++) {
    int val = Integer.parseInt(tableauDeChiffres[i]);

    if(Math.abs(val) < Math.abs(proche)) {
        proche = val;
    }
}
%>
Valeur la plus proche de 0 : <%= proche %>
</p>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>

<p>
<%
int proche2 = Integer.parseInt(tableauDeChiffres[0]);

for(int i = 1; i < tableauDeChiffres.length; i++) {
    int val = Integer.parseInt(tableauDeChiffres[i]);

    if(Math.abs(val) < Math.abs(proche2) || 
       (Math.abs(val) == Math.abs(proche2) && val > proche2)) {
        proche2 = val;
    }
}
%>
Valeur la plus proche de 0 : <%= proche2 %>
</p>


<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
