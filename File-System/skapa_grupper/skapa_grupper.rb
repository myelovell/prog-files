#2020-+4-21, shuffled namnlista into structure groups

#variables
namnlista = File.readlines("namnlista.txt") #outputs with \n
filename = "file#{rand(100..1000)}.txt"
skapad_fil = File.open("#{filename}", "a")
namnlista = namnlista.shuffle
groups = []
group_num = namnlista.length/4

four_elements = 0
group_list = []
offset = 0

while groups.length != group_num
    while four_elements != 4
        group_list << namnlista[four_elements + offset]
        four_elements += 1
    end

    groups << group_list
    group_list = []
    four_elements = 0
    offset += 4
end

index1 = 0
index2 = 0
while index1 < groups.length
    skapad_fil.write("Group #{index1 + 1}:")
    skapad_fil.write("\n")
    while index2 < groups[index1].length
        name = groups[index1][index2].chomp
        skapad_fil.write(name)
        skapad_fil.write("\n")
        name = ""
        index2 += 1
    end
    skapad_fil.write("\n")
    index2 = 0
    index1 += 1
end

skapad_fil.close
