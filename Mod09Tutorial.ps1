﻿#Matt Hamilton
#Mod09 Tutorial

clear
Read-Host "Press enter to move from task to task"



#This Task says Hello World

#Task 1
clear
Write-Host "Task 1`r`n"
Write-Host "Hello World"
Read-Host


#This Task gets the users input and checks to see if it is an integer

#Task 2
clear
Write-Host "Task 2`r`n"
while ($true)
{
    $user_guess = Read-Host "Please enter an integer"
    try
    {
        $user_guess -eq $user_guess/1 | ouT-NUll
    }
    catch
    {
        Write-Host "`r`n$user_guess is not an integer. Press Enter to try again."
        Read-Host
        clear
        continue
    }
    if (($user_guess/1 -is [int]) -and ($user_guess -ne ""))
    {
        Write-Host "`r`nYou entered $user_guess which is an integer."
        Read-Host
        break
    }
    else
    {
        Write-Host "`r`n$user_guess is not an integer. Press Enter to try again."
        Read-Host
        clear
        continue

    }
}



#This Task multiplies the users input by 3

#Task 3
clear
Write-Host("Task 3`r`n")
Write-Host ("$user_guess times 3 is " + (($user_guess/1) * 3))
Read-Host



#This Task counts up and on the 7th number says snowflake, and other numbers are odd and even.

#Task 4
clear
Write-Host ("Task 4`r`n")

for ($i =1; $i -le 20; $i++)
{
    if ($i -eq 7)
    {
        Write-Host "Snowflake"
    }
    elseif ($i%2 -eq 1)
    {
        Write-Host "Odd"
    }
    else
    {
        Write-Host "Even"
    }
}
Read-Host


#This Task elaborates on the previous task


#Task 5
clear
Write-Host ("Task 5`r`n")
while ($true)
{
    $user_guess = Read-Host "Enter a number greater than 13"
    try
    {
        $user_guess -eq $user_guess/1 | Out-Null
    }
    catch
    {
        Write-Host "`r`n$user_guess is not an integer. Press Enter to try again."
        Read-Host
        clear
        continue
    }
    if (($user_guess/1 -is [int]) -and ($user_guess -ne "") -and ($user_guess/1 -gt 13))
    {
        break
    }
    else
    {
        Write-Host "`r`n$user_guess is not an appropriate choice. Press Enter to try again."
        Read-Host
        clear
        continue
    }
}

for ($i =1; $i -le $user_guess; $i++)
{
    if ($i -eq 7)
    {
        Write-Host "Snowflake"
    }
    elseif ($i -eq 13)
    {
        Write-Host "Unlucky"
    }
    elseif ($i%2 -eq 1)
    {
        Write-Host "Odd"
    }
    else
    {
        Write-Host "Even"
    }
}
Read-Host




#This Task checks to see if the user inputs the correct last name

#Task 6
clear
Write-Host ("Task 6`r`n")
while ($true)
{
    $user_name = Read-Host "Please enter a last name (Hamilton)"
    if ($user_name -eq "Hamilton")
    {
        break
    }
    else
    {
        continue
    }
}


#This Task shows some work with a counter

#Task 7
clear
Write-Host ("Task 7`r`n")
$counter = 0
while ($counter -lt 10)
{
    Write-Host $counter
    $counter += 1
}


#This Task displays some uses of Get-Random

#Task 8
clear
Write-Host ("Task 8`r`n")
$ran_low=0
$ran_high=0

for ($i =0; $i -lt 30; $i += 1)
{
    $my_random = Get-Random -Minimum -10 -Maximum 11
    if ($my_random -gt $ran_high)
    {
        $ran_high = $my_random
    }
    if ($my_random -lt $ran_low)
    {
        $ran_low = $my_random
    }
}

Write-Host "The lowest value was $ran_low and the highest value was $ran_high"

Read-Host "`r`nPress Enter to end the script"



