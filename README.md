# note-organizer
>  My Jekyll template I use to store my private university notes written in HTML format. 

## Features
1. Using Jekyll to store and display your school/university HTML notebook
2. Automatically organizing your notes by semester and subject type (for example, lecture or lab)
3. Built-in libraries for displaying math, source codes and image galleries

## How to run?
Easiest way to run **note-organizer** is to use Docker. Just clone this repo and run `docker-compose up -d`. After a couple of seconds, **note-organizer** should be accesible in your browser by typing `localhost:4005` in browser's URL bar.
Of course you can also install Jekyll directly on your computer and run `jekyll serve` if you prefer.

## How to use?
You need to be at least familiar with Jekyll and basic HTML syntax to use **note-organizer**.

In **note-organzier/_config.yml** file you can set the name, author and description of your notebook. Remember that after modyfing **_config.yml** you need to restart Jekyll server in order to see your changes.

Your notes should be written in HTML format. Put your notes inside **note-organizer/_notes/** subdirectory. The name of the file doesn't matter, as long as it has **html** extension. You can also create custom subdirectories in **_notes**, HTML files in those subdirectories will be parsed as well.

Every HTML file should contain [front matter](https://jekyllrb.com/docs/front-matter/) with those variables set:
```
# Is this the main note of this subject?
# If subject with this name, type and semester 
# contains multiple notes, you should mark one of them as true and the rest as false
note_main: true  

# Subject name
note_subject_name: "English"  

# Subject type (for example Lectures or Labs)
note_subject_type: "Lectures"  

# Semester, that is covered by this note 
note_semester: 2  

# Note name - if subject with this name, type and 
# semester contains multiple notes, they all should have different names
note_name: "My english notes"
```

If something is still unclear, inside **/note-organizer/_notes** you will find some default notes to help you understand how note-organizer works. Once you have read them, you should delete them to make room for your own notes.

## Screenshots
### Screenshot 1:
<img src="https://user-images.githubusercontent.com/32397526/148612565-8dc7ba87-d1ec-4644-94ea-c48a90983c0f.png" alt="screenshot 1" width="600">

### Screenshot 2:
<img src="https://user-images.githubusercontent.com/32397526/148612571-3720392e-8904-432b-bb61-6e64ec24d9e0.png" alt="screenshot 2" width="600">

## Technologies used
- Jekyll
- Bootstrap
- MathJax
- HighlightJS
- Ekko-Lightbox