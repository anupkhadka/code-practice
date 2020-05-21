#! /bin/sh

# mergeStudentInfo.sh
# 
# This program sorts and merges two different files. 
# The first file consists of 1-1 mapping between student ID and name
#
# Eg. student_id_name.txt
#
# ID        Name
# 98713     A
# 39332     B
# 87932     C 
# 
# The second file consists of 1-1 mapping between student ID and GPA
# 
# Eg. student_id_gpa.txt
# 
# ID        GPA
# 39332     3.5
# 87932     4.0
# 98713     2.7

# The resulting output will be

# Remove comments and sort files
sed '/^#/d' student_id_name.txt  | sort > id_name
sed '/^#/d' student_id_gpa.txt  | sort > id_gpa

# Combine on first key (ID), and write to standard output 
join id_name id_gpa

# cleanup
rm id_name id_gpa
