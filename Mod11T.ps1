﻿ #Matt Hamilton
 #Mod 11 Tutorial
 
 cls
 

 #This is the jumbled up songs string

 $song_jumble_string=("Quisiera:Ayer:cambiarle:conocí:el:un:final" +
               ":cielo:al:sin:cuento|Las:sol|Y:barras:un:y" +
               ":hombre:los:sin:tragos:suelo|Un:han:santo:" +
               "sido:en:testigo|De:prision|Y:el:una:dolor:" +
               "canción:que:triste:me:sin:causaste:dueño|Y:" +
               "y:conocí:to':tus:lo:ojos:que:negros|Y:hiciste" +
               ":ahora:conmigo|Un:sí:infeliz:que:en:no:el:" +
               "puedo:amor,:vivir:que:sin:aun:ellos:no:yo|" +
               "Le:te:pido:supera|Que:al:ahora:cielo:camina" +
               ":solo:solo:un:sin:deseo|Que:nadie:en:por:tus" +
               ":todas:ojos:las:yo:aceras|Preguntándole:pueda" +
               ":a:vivir|He:Dios:recorrido:si:el:en:mundo:verdad" +
               ":entero|te:el:vengo:amor:a:existe|:decir|") 


$song1 = @();
$song2 = @();
$song3 = @();
$song1_print = "";
$song2_print = "";
$duplicates = @();

#make the array from the string
$lyrics += $song_jumble_string.Split(":")

#one loop to split this into two strings
for ($i=0; $i -lt $lyrics.length; $i += 2)
{
    $song1 += $lyrics[$i]
    $song2 += $lyrics[$i+1]
}

#Build the song lyrics to print for the first song
foreach ($i in $song1)
{
    $song1_print += $i + " "
}

#Build the song lyrics to print for the second song
foreach ($i in $song2)
{
    $song2_print += $i + " "
}

#Break the lines up for both songs
$song1_print = $song1_print -replace "\|", "`r`n"
$song2_print = $song2_print -replace "\|", "`r`n"

#Print the lyrics for both songs
write-host($song1_print)
write-host($song2_print)

#Untangle strings in song1 with |
$song1_lower = @()
$tangled_pair = @()
foreach ($i in $song1)
{
    if ($i.Contains("|"))
    {
        $tangled_pair = $i.split("|")
        if ($tangled_pair[0].Length -ne 0)
        {
            $song1_lower += $tangled_pair[0].ToLower();
        }
        
        if ($tangled_pair[1].Length -ne 0)
        {
            $song1_lower += $tangled_pair[1].ToLower();
        }
        
    }
    else
    {
        $song1_lower += $i
    }
}


#Untangle strings in song2 with |
$song2_lower = @()
$tangled_pair = @()
foreach ($i in $song2)
{
    if ($i.Contains("|"))
    {
        $tangled_pair = $i.split("|")
        if ($tangled_pair[0].Length -ne 0)
        {
            $song2_lower += $tangled_pair[0].ToLower();
        }
        
        if ($tangled_pair[1].Length -ne 0)
        {
            $song2_lower += $tangled_pair[1].ToLower();
        }
        
    }
    else
    {
        $song2_lower += $i
    }
}



#Collect the duplicates into song3

$song3 = @()
foreach ($j in $song1_lower)
{
    if ($song2_lower.CoNtains($j))
    {
        if (-Not $song3.Contains(($j.ToLower())))
        {
            $song3 += $j.ToLower()
        }
    }
}

$song3 = $song3 | sort

write-host $song3