﻿#Matthew Hamilton
#Module 11 Homework


$name_list = @('Constance Castillo', 'Kerry Goodwin',
 'Dorothy Carson', 'Craig Williams', 'Daryl Guzman', 'Sherman Stewart',
 'Marvin Collier', 'Javier Wilkerson', 'Lena Olson', 'Claudia George',
 'Erik Elliott', 'Traci Peters', 'Jack Burke', 'Jody Turner',
 'Kristy Jenkins', 'Melissa Griffin', 'Shelia Ballard', 'Armando Weaver',
 'Elsie Fitzgerald', 'Ben Evans', 'Lucy Baker', 'Kerry Anderson',
 'Kendra Tran', 'Arnold Wells', 'Anita Aguilar', 'Earnest Reeves',
 'Irving Stone', 'Alice Moore', 'Leigh Parsons', 'Mandy Perez',
 'Rolando Paul', 'Delores Pierce', 'Zachary Webster', 'Eddie Ward',
 'Alvin Soto', 'Ross Welch', 'Tanya Padilla', 'Rachel Logan',
 'Angelica Richards', 'Shelley Lucas', 'Alison Porter', 'Lionel Buchanan',
 'Luis Norman', 'Milton Robinson', 'Ervin Bryant', 'Tabitha Reid',
 'Randal Graves', 'Calvin Murphy', 'Blanca Bell', 'Dean Walters',
 'Elias Klein', 'Madeline White', 'Marty Lewis', 'Beatrice Santiago',
 'Willis Tucker', 'Diane Lloyd', 'Al Harrison', 'Barbara Lawson',
 'Jamie Page', 'Conrad Reynolds', 'Darnell Goodman', 'Derrick Mckenzie',
 'Erika Miller', 'Tasha Todd', 'Aaron Nunez', 'Julio Gomez',
 'Tommie Hunter', 'Darlene Russell', 'Monica Abbott', 'Cassandra Vargas',
 'Gail Obrien', 'Doug Morales', 'Ian James', 'Jean Moran',
 'Carla Ross', 'Marjorie Hanson', 'Clark Sullivan', 'Rick Torres',
 'Byron Hardy', 'Ken Chandler', 'Brendan Carr', 'Richard Francis',
 'Tyler Mitchell', 'Edwin Stevens', 'Paul Santos', 'Jesus Griffith',
 'Maggie Maldonado', 'Isaac Allen', 'Vanessa Thompson', 'Jeremy Barton',
 'Joey Butler', 'Randy Holmes', 'Loretta Pittman', 'Essie Johnston',
 'Felix Weber', 'Gary Hawkins', 'Vivian Bowers', 'Dennis Jefferson',
 'Dale Arnold', 'Joseph Christensen', 'Billie Norton', 'Darla Pope',
 'Tommie Dixon', 'Toby Beck', 'Jodi Payne', 'Marjorie Lowe',
 'Fernando Ballard', 'Jesse Maldonado', 'Elsa Burke', 'Jeanne Vargas',
 'Alton Francis', 'Donald Mitchell', 'Dianna Perry', 'Kristi Stephens',
 'Virgil Goodwin', 'Edmund Newton', 'Luther Huff', 'Hannah Anderson',
 'Emmett Gill', 'Clayton Wallace', 'Tracy Mendez', 'Connie Reeves',
 'Jeanette Hansen', 'Carole Fox', 'Carmen Fowler', 'Alex Diaz',
 'Rick Waters', 'Willis Warren', 'Krista Ferguson', 'Debra Russell',
 'Ellis Christensen', 'Freda Johnston', 'Janis Carpenter', 'Rosemary Sherman',
 'Earnest Peters', 'Kelly West', 'Jorge Caldwell', 'Moses Norris',
 'Erica Riley', 'Ray Gordon', 'Abel Poole', 'Cary Boone',
 'Grant Gomez', 'Denise Chapman', 'Vernon Moran', 'Ben Walker',
 'Francis Benson', 'Andrea Sullivan', 'Wayne Rice', 'Jamie Mason',
 'Jane Figueroa', 'Pat Wade', 'Rudy Bates', 'Clyde Harris',
 'Andre Mathis', 'Carlton Oliver', 'Merle Lee', 'Amber Wright',
 'Russell Becker', 'Natalie Wheeler', 'Maryann Miller', 'Lucia Byrd',
 'Jenny Zimmerman', 'Kari Mccarthy', 'Jeannette Cain', 'Ian Walsh',
 'Herman Martin', 'Ginger Farmer', 'Catherine Williamson', 'Lorena Henderson',
 'Molly Watkins', 'Sherman Ford', 'Adam Gross', 'Alfred Padilla',
 'Dwayne Gibson', 'Shawn Hall', 'Anthony Rios', 'Kelly Thomas',
 'Allan Owens', 'Duane Malone', 'Chris George', 'Dana Holt',
 'Muriel Santiago', 'Shelley Osborne', 'Clinton Ross', 'Kelley Parsons',
 'Sophia Lewis', 'Sylvia Cooper', 'Regina Aguilar', 'Sheila Castillo',
 'Sheri Mcdonald', 'Lynn Hodges', 'Patrick Medina', 'Arlene Tate',
 'Minnie Weber', 'Geneva Pena', 'Byron Collier', 'Veronica Higgins',
 'Leo Roy', 'Nelson Lopez')



 #This is the first function, it enables the user to see lists of first names by input

 function func_1 ()
 {
    $counter_1 = 0

    $input1 = Read-Host "Enter the first name, or a partial start of the first name."

    $input1 = (Get-Culture).TextInfo.ToTitleCase($input1.ToLower())

    foreach ($i in $name_list)
    {
        if ($i.StartsWith($input1))
        {
            write-host "$i"
            $counter_1 += 1
        }
        
    }



    if ($counter_1 -eq 0)
    {
        Write-Host "`r`nNo first names were found starting with $input1 `r`n"
    }


    read-host "Press Enter to return to the previous menu"

    cls

 }

 #This is the second function, it enables the user to see lists of last names by input

 function func_2 ()
 {

    $counter_2 = 0

    $input2 = Read-Host "Enter the last name, or a partial start of the last name."

    $input2 = (Get-Culture).TextInfo.ToTitleCase($input2.ToLower())

    foreach ($i in $name_list)
    {
        $name = $i.split()

        if ($name[1].StartsWith("$input2"))
        {
            write-host "$i"
            $counter_2 += 1
        }


    }

    if ($counter_2 -eq 0)
    {
        Write-Host "`r`nNo last names were found starting with $input2 `r`n"
    }


    read-host "Press Enter to return to the previous menu"

    cls

 }


 #This is the third function, it enables the user to add a name to the list.

 function func_3 ()
 {
    $input3_first = Read-Host "Enter the new first name"

    $input3_last = Read-hOst "Enter the new Last name"


    $input3_first = (Get-Culture).TextInfo.ToTitleCase($input3_first.ToLower())


    $input3_last = (Get-Culture).TextInfo.ToTitleCase($input3_last.ToLower())


    $input3_newname = "$input3_first $input3_last"

    $Global:name_list += "$input3_newname"

    write-host "$input3_newname"


    
 }


 # This is the fourth function, It enables the user to remove a name from the list, get to option 1, or return to the main menu if so desired.

 function func_4 ()
 {
    $input4 = Read-Host "Enter the full name, `"1`" to view names or `"Q`" to quit"

    $Global:input4 = (Get-Culture).TextInfo.ToTitleCase($input4.ToLower())


    if ($input4 -eq 1)
    {
        clear
        func_1
    }

    elseif ($input4 -eq "Q")
    {
        clear
    }

    else
    {


       if ($name_list.Contains("$input4"))
       {
            $index_input4 = $name_list.Indexof("input4")
            
            $temp_list = @()


            for ($i=0; $i -lt "$index_input4"; $i++)
            {
                $temp_list += $name_list[$i]
            }
            
            for ($i=$input4+1; $i -lt $name_list.Count; $i++)
            {
                $temp_list += $name_list[$i]
            }
          
       }

       
    }




        

    
 }


 #This is the main menu for the script, offering the user five choices.

 while ($true)
 {
    
    write-host("
Please select from the following options:

    1. List all names starting with one or more letters of the first name.
    2. List all names starting with one or more letters of the last name.
    3. Add a name.
    4. Delete a name.
    5. Exit

")

$user_choice = read-host "Option #"

if ($user_choice -eq 1)
{
    clear
    func_1
}
elseif ($user_choice -eq 2)
{
    clear
    func_2
}
elseif ($user_choice -eq 3)
{
    clear
    func_3
}
elseif ($user_choice -eq 4)
{
    clear
    func_4
}
elseif ($user_choice -eq 5)
{
    clear
    break
}
else
{
    clear
}

}