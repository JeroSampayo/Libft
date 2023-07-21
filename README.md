# Libft Library + Bonus

![C](https://forthebadge.com/images/badges/made-with-c.svg)
![GIT](https://forthebadge.com/images/badges/uses-git.svg)


The goal of this project is to create a C library that contains a collection of commonly used functions that can be easily reused in future projects. By developing this library, you'll be able to streamline your coding process, reduce redundancy in your code, and improve overall code efficiency. The library will include a variety of functions, ranging from basic operations such as string manipulation and mathematical calculations, to more complex algorithms and data structures. So, whether you're a seasoned programmer or just starting out, this project offers a great opportunity to hone your skills and contribute to the development of useful software.


# Libft Libreria + Bonus

![C](https://forthebadge.com/images/badges/made-with-c.svg)
![GIT](https://forthebadge.com/images/badges/uses-git.svg)

El objetivo de este proyecto es crear una biblioteca C que contenga una colección de funciones de uso común que puedan ser fácilmente reutilizadas en futuros proyectos. Mediante el desarrollo de esta biblioteca, seras capaz de agilizar el proceso de codificación, ser mas eficiente en tu codigo. La biblioteca incluirá una gran variedad de funciones, desde operaciones básicas como manipulación de cadenas y cálculos matemáticos, hasta algoritmos y estructuras de datos más complejos. Así que, tanto si eres un programador experimentado como si acabas de empezar, este proyecto te ofrece una gran oportunidad para perfeccionar tus habilidades y contribuir al desarrollo de software útil.

# Table of contents

# Basic Functions
### •[ft_isalpha](ft_isalpha.c)•<br> 
#### isalpha: Checks whether a character is an alphabet or not<br>
##### [Description ft_isalpha]<br>
 1- Check and return (1) if the character passed by function its a letter<br>
 2- If not return (0)<br>

### •[ft_isdigit](ft_isdigit.c)•<br>
#### isdigit: Checks whether a character is numeric character (0-9) or not<br>
##### [Description ft_isdigit]<br>
 1- Check and return (1) if the character passed by function its a number<br>
 2- If not return (0)<br>
 
### •[ft_isalnum](ft_isalnum.c)•<br>
#### isalnum: Checks whether the argument passed is an alphanumeric character (alphabet or number) or not<br>
##### [Description ft_isalnum]<br>
   1- Check and return (1) if the character passed by function its a<br>
   	- number calling the function isdgit<br>
   	- letter calling the function isalpha<br>
   2- If not return (0)<br>
   
### •[ft_isprint](ft_isprint.c)•<br>
#### isprint: Checks whether a character is a printable character or not<br>
##### [Description ft_isprint]<br>
   1- Check and return (1) if the character its printable<br>
   2- If not return (0)<br>
   
### •[ft_strlen](ft_strlen.c)•<br>
#### strlen: Calculates the length of a given string.
##### [Description ft_strlen]<br>
   1- Iterate the string, and return the counter(i)<br>
   
### •[ft_memset](ft_memset.c)•<br>
#### memset: Copies the character c (an unsigned char) to the first n characters of the string pointed to, by the argument str<br>
##### [Description ft_memset]<br>
   1- Create new string with the value of str<br>
   2- Iterate the new string as many times as indicated by function(len)<br>
   3- Each iteration replaces its characters with those passed by function(c).<br>
   
### •[ft_isascii](ft_isascii.c)•<br>
#### ft_isascii: Checks whether the argument passed can be represented as a valid 7–bit US-ASCII character<br>
##### [Description ft_isascii]<br>
   1- Check and return (1) if the character passed by function its simple ascii<br>
   2- If not return (0)<br>
   
### •[ft_bzero](ft_bzero.c)•<br>
#### bzero: Function erases the data in the n bytes of the memory starting at the location pointed to by s, by writing zeros<br>
##### [Description ft_bzero]<br>
   1-  Call the [ft_memset] function and set a 0 as character<br>
   
### •[ft_memcpy](ft_memcpy.c)•<br>
#### ft_memcpy: Copies n characters from memory area src to memory area dest<br>
##### [Description ft_memcpy]<br>
 1- Check if the dst and src exist<br>
 2- Create new string with the value of dst and other with src<br>
 3- Iterates up to the parameter passed by the function(len)<br>
 4- Every iteration copy the value of source inside destination<br>
 5- Return destination<br>
 
### •[ft_memmove](ft_memmove.c)•<br>
#### memmove: Copies n characters from str2 to str1, but for overlapping memory blocks, memmove() is a safer approach than memcpy()<br>
##### [Description ft_memmove]<br>
 1- Check if the dst and src exist<br>
 2- Create new string with the value of dst and other with src<br>
 3- If dst < src, copy in dest the len of str with memcpy.<br>
 4- If dst and src are equal return dst<br>
 5- If not(dst < src) and not (dst = src) then iterate from right to left of str copying src to dst<br>
 6- Return dst<br>
 
### •[ft_strlcpy](ft_strlcpy.c)•<br>
#### strlcpy: Function copies up to size - 1 characters from the NUL-terminated string src to dst, NUL-terminating the result<br>
#####[Description ft_strlcpy]<br>
 1- Check if parameter lend_dst its 0 or negative,if its return the len of str<br>
 2- Iterate while source exist and the counter its less to len_dst<br>
 3- Every iteration copy the source in the destination<br>
 4- When the iteration its over close the string<br>
 5- Return the len of the source<br>
 
### •[ft_strlcat](ft_strlcat.c)•<br>
#### strlcat: Function appends the NUL-terminated string src to the end of dst. It will append at most size - strlen(dst) - 1 bytes, NUL-terminating the result.<br>
##### [Description ft_strlcat]<br>
 1- Get the len of the destination<br>
 2- If the size is < len of dst<br>
   - Return the len of source plus size<br>
 3- Iterate while<br>
   -(size > 0) and (destination len its smaller than size) and (source exist)<br>
 4- Every iteration copy the source in the destination (warning counters)<br>
 5- Close the string<br>
 6- Iterate while the rest of source exist and plus the destination len<br>
 7- Return destination len<br>
 
### •[ft_toupper](ft_toupper.c)•<br>
#### toupper: Converts a lowercase alphabet to an uppercase alphabet <br>
##### [Description ft_toupper] <br>
 1- If char(c) its Lower case substract 32<br>
 2- Return char(c)<br>
 
### •[ft_tolower](ft_tolower.c)•<br>
#### tolower: Converts an uppercase alphabet to a lowercase alphabet <br>
##### [Description ft_tolower]<br>
 1- If char(c) its Upper case increase 32<br>
 2- Return char(c)<br>
 
### •[ft_strchr](ft_strchr.c)•<br>
#### strrchr: Searches for the last occurrence of the character c (an unsigned char) in the string pointed to, by the argument str<br>
##### [Description ft_strrchr]<br>
 1- Get the len of the str<br>
 2- Iterate while the len >= 0<br>
 3- Each iteration<br>
   -Check if str are equal to the character passed by the function(c)<br>
     -# If its return the rest of te str<br>
 4- Outside the iteration return (0)<br>

### •[ft_strncmp](ft_strncmp.c)•<br>
#### strncmp: Compares at most the first n bytes of str1 and str2<br>
##### [Description ft_strncmp]<br>
 1- Check if str1 and str2 are not finished and the n its not 0, if its return (0)<br>
 2- Iterate while (str1 and str2 are equal) and (counter its minor than n) and (str1 and str2 exist)<br>
 3- Each iteration increases the counter(i)<br>
 4- Returns the difference between the str1 and str2<br>

### •[ft_memchr](ft_memchr.c)•<br>
#### memchr: Searches for the first occurrence of the character c (an unsigned char) in the first n bytes of the string pointed to, by the argument str<br>
##### [Description ft_memchr] <br>
 1- Create new string with the value of s1<br>
 2- Iterates up to the parameter passed by the function(n)<br>
 3- Every iteration check if the vaule of str its equal to<br>
 character passed by function(c), if its equal return the pointer of the matching byte<br>
 4- If no similarity was found returns null<br>

### •[ft_memcmp]( ft_memcmp.c)•<br>
#### memcmp: Compares the first n bytes of memory area str1 and memory area str2<br>
##### [Description ft_memcmp]<br>
 1- Check if the s1 and s2 exist<br>
 2- Create new string with the value of s1 and other with s2<br>
 3- Check if the bytes(n) for check passed by functions its 0, if its, return 0<br>
 4- Iterate as long as both strings are equal, or as long as there are bytes left to check.<br>

### •[ft_strnstr](ft_strnstr.c)•<br>
#### strnstr: The strnstr() function locates the first occurrence of the null-termi-nated string little in the string big, where not more than len characters are searched<br>
##### [Description ft_strnstr] <br>
 1- Create new strings with the value of str and srch<br>
 2- Check if srch its finished, if its Return str<br>
 3- Iterate while (str exist) and the (counter is less than n)<br>
 4- Each iteration<br>
   - Reset the secondary counter(j)<br>
   - Check if str and srch are equal<br>
     -# If its equal<br>
       -## Iterate while are equal and increase the secondary counter(j)<br>
       -## Check if search are finished<br>
         -### If its finished Return the rest of the str<br>
         
### •[ft_atoi](ft_atoi.c)•<br>
#### atoi: Converts the string argument str to an integer (type int)<br>
##### [Description ft_atoi] <br>
 1- The first Iteration,	"erase" the blanks and special comands from the cont(i) of the string(str)<br>
 2- Detect negative or positive(neg)<br>
 3- Iterate the rest of the string while the cont its equal to a number, and saving it in a new variable * ten<br>
 4- Return the new value with the correct symbol (-+)<br>
 
### •[ft_calloc](ft_calloc.c)•<br>
#### calloc: Allocates the requested memory and returns a pointer to it. The difference in malloc and calloc is that malloc does not set the memory to zero where as calloc sets allocated memory to zero<br>
##### [Description ft_calloc] <br>
 1- Create and check a new string, with the parameters passed by function<br>
 2- Call bzero and send ith the new str(temp) and his size (count * size)<br>
 3- Return the new string<br>
 
### •[ft_strdup](ft_strdup.c)•<br>
#### strdup: Function returns a pointer to a new string which is a duplicate of the string s.<br>
##### [Description ft_strdup]<br>
 1- Get the len of the source for the malloc<br>
 2- Create and check the new string<br>
 3- Copy in the new string the source<br>
 4- Return the new string<br>

# Additional functions 
### •[ft_substr](ft_substr.c)•  <br>
#### putstr	outputs the string s to the standard output<br>

### •[ft_strjoin](ft_strjoin.c)•  <br>
#### strjoin	allocates (with malloc(3)) and returns a “fresh” string ending with ’\0’, result of the concatenation of s1 and s2. If the allocation fails the function returns NULL<br>

### •[ft_strtrim](ft_strtrim.c)•  <br>
#### ft_strtrim	allocates (with malloc(3)) and returns a copy of the string given as argument without whitespaces at the beginning or at the end of the string. Will be considered as whitespaces the following characters ’ ’, ’\n’ and ’\t’. If s has no whitespaces at the beginning or at the end, the function returns a copy of s. If the allocation fails the function returns NULL<br>

### •[ft_split](ft_split)•  <br>
#### split	allocates (with malloc(3)) and returns an array of “fresh” strings (all ending with ’\0’, including the array itself) obtained by spliting s using the character c as a delimiter. If the allocation fails the function returns NULL. Example: ft_strsplit(" hello fellow students ", ’ ’) returns the array ["hello", "fellow", "students"]
<br>

### •[ft_itoa](ft_itoa.c)•  <br>
#### itoa	allocate (with malloc(3)) and returns a “fresh” string ending with ’\0’ representing the integer n given as argument. Negative numbers must be supported. If the allocation fails, the function returns NULL
ft_putchar	outputs the character c to the standard output <br>

### •[ft_strmapi](ft_strmapi.c)•  <br>
#### ft_strmapi	applies the function f to each character of the string passed as argument by giving its index as first argument to create a “fresh” new string (with malloc(3)) resulting from the successive applications of f<br>

### •[ft_striteri](ft_striteri.c)•  <br>
#### ft_striteri	applies the function f to each character of the string passed as argument, and passing its index as first argument. Each character is passed by address to f to be modified if necessary<br>

### •[ft_putchar_fd](ft_putchar_fd.c)•  <br>
#### putchar_fd	outputs the char c to the file descriptor fd<br>

### •[ft_putstr_fd](ft_putstr_fd.c)•  <br>
#### putstr_fd	outputs the string s to the file descriptor fd

### •[ft_putendl_fd](ft_putendl_fd.c)•  <br>
#### putendl_fd	outputs the string s to the file descriptor fd followed by a ’\n’<br>

### •[ft_putnbr_fd](ft_putnbr_fd.c)•  <br>
#### putnbr_fd	outputs the integer n to the file descriptor fd.<br>

# Bonus functions 
### •[ft_lstnew](ft_lstnew.c)•  <br>
#### *ft_lstnew Creates a new linked list node with the given 'content' and returns its pointer. The 'next' pointer is set to NULL. Note: This implementation doesn't use malloc, as it is not strictly necessary for the function's functionality.<br>

### •[ft_lstadd_front](ft_lstadd_front.c)•  <br>
#### ft_lstadd_front	Adds the 'new' node to the front of the linked list pointed to by 'lst'. The 'new' node becomes the new first node in the list. This function modifies the list's pointers and does not use malloc.<br>

### •[ft_lstadd_back](ft_lstadd_back.c)•  <br>
#### ft_lstadd_back Adds the 'new' node to the back of the linked list pointed to by 'lst'. The 'new' node becomes the new first node in the list. This function modifies the list's pointers and does not use malloc.<br>

### •[*ft_lstlast](ft_lstlast.c)•  <br>
#### *ft_lstlast Returns a pointer to the last node of the linked list 'lst'. If the list is empty or NULL, it returns NULL. This function does not use malloc..<br>

### •[ft_lstsize](ft_lstsize.c)•  <br>
#### ft_lstsize Returns the number of nodes in the linked list 'lst'. This function traverses the list, counting the nodes, and does not use malloc.<br>

### •[ft_lstdelone](ft_lstdelone.c)•  <br>
#### ft_lstdelone Deletes a single node from the linked list pointed to by 'lst'. It uses the 'del' function to free the content of the node and then frees the memory occupied by the node itself. Note: This function does not use malloc for memory allocation.<br>

### •[ft_lstclear](ft_lstclear.c)•  <br>
#### ft_lstclear Clears the entire linked list pointed to by 'lst' and frees the memory for each node and its content using the provided 'del' function. This function does not use malloc for memory allocation.<br>  

### •[ft_lstiter](ft_lstiter.c)•  <br>
#### ft_lstiter Applies the function 'f' to each node's content in the linked list 'lst'. It traverses the list using a while loop, calling 'f' for the content of each node. This function does not use malloc for memory allocation.<br>

### •[*ft_lstmap](ft_lstmap.c)•  <br>
#### *ft_lstmap Maps each node of the linked list 'lst' using function 'f', creating a new list with the transformed content. If memory allocation fails, it frees the allocated memory and returns NULL. The 'del' function is used for freeing memory of transformed content in case of allocation failure. This function may use malloc for memory allocation.<br>  
