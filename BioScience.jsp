<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>BioScience Playlist by MicrosoftResearch</title>
    <style>
        .section .h1 {
	text-align: center;
	margin-top: 5rem;
	font-size: 1.125rem;
	line-height: 1.5;
	transition: all 725ms ease-in-out;
	font-size: 2rem;
	font-weight: bolder;
	margin-bottom: 3rem;
	color: white;
}
*
{
    padding: 0;
    box-sizing: border-box;
}
body::-webkit-scrollbar
{
   width: 10px;
}
body::-webkit-scrollbar-thumb
{
   height: 80px;
   background: #78ebfc 100%;
   border: 8px solid transparent;
   border-radius: 12px;
}
body::-webkit-scrollbar-thumb:active
{
    background: #8b5aed 0%;
}
body
{
    font-family: sans-serif;
    background: linear-gradient(45deg, #8b5aed 0%, #78ebfc 100%);
}
li
{
    list-style: none;
}
section
{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 2.5%;
    min-height: 100vh;
}
.title
{
    font-size: 20px;
    font-weight: 600;
    color: #dcdee1;
    text-align: left;
    width: 100%;
    margin-bottom: 10px;
}
.container
{
    position: relative;
    width: 100%;
    height: 100%;
    display: grid;
    grid-template-columns: 2fr 1fr;
    overflow: hidden;
    /* border: 2px solid red; */
}
.container #main-Video
{
    position: relative;
    width: 100%;
    height: 470px;
    overflow: hidden;
    outline: none;
}

.playlistBx
{
    position: relative;
    height: 100%;
    margin: 0 10px 0 10px;
    /* border: 2px solid green; */
}
.playlist
{
    position: absolute;
    width: 100%;
    height: calc(100% - 40px);
    overflow-y: scroll;
    border-top: 1px solid #dcdee1;
}
.playlist::-webkit-scrollbar
{
   width: 0px;
}
.playlistBx .row .AllLessons
{
   display: block;
   text-align: left;
   color: #dcdee1;
   font-size: 15px;
   font-weight: 700;
   margin-left: 40px;
   line-height: 40px;
}
.playlist li
{
   display: flex;
   justify-content: space-between;
   align-items: center;
   list-style: none;
   color: #dcdee1;
   cursor: pointer;
   border: 1px solid transparent;
   padding: 15px 20px;
   border-radius: 5px;
}
.playlist li:hover
{
    border: 0.5px solid #dcdee1;
}
.playlist li .row span
{
    font-size: 15px;
    font-weight: 400;
    color: #dcdee1;
    text-decoration: none;
    display: inline-block;
    text-align: left;
}
.playlist li .row span::before
{
    content: '\f01d';
    font-family: FontAwesome;
    color: #dcdee1;
    margin-right: 15px;
    font-size: 20px;
}
ul li.playing .row span::before
{
    content: '\f28c';
    font-family: FontAwesome;
    color: #fff;
    margin-right: 15px;
    font-size: 20px;
}
.playlist li.playing .row span
{
   color: #fff;
}
.playlist li span.duration
{
    font-size: 15px;
    font-weight: 400;
    display: inline-block;
    color: #dcdee1;
    text-align: right;
}
.playlist li.playing
{
   pointer-events: none;
   background: #8b5aed 0%;
   border: 0.5px solid #78ebfc 100%;
}

@media(max-width: 1092px){
    section
    {
        padding: 30px 10px;
    }
    .container
    {
        width: 100%;
        display: grid;
        grid-template-columns: repeat(1,1fr);
        overflow: hidden;
    }
    .container #main-Video
    {
        height: 400px;
    }
    .playlistBx
    {
        height: 380px;
        margin-top: 10px;
    }
    .playlist
    {
        position: absolute;
        width: 100%;
        height: calc(100% - 40px);
        overflow-y: scroll;
    }
}
@media(max-width: 650px){
    #main-Video
    {
        height: 300px !important;
    }
}
@media(max-width: 500px){
    #main-Video
    {
        height: 280px !important;
    }
}
@media(max-width: 400px){
    #main-Video
    {
        height: 250px !important;
    }
}    </style>
</head>
<body>
    <section>
        <h1>BioScience tutorial by MicrosoftResearch</h1>
        <h2 class="title"></h2>
        <div class="container">
            <div id="video_player">
                <iframe controls id="main-Video" src="" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="playlistBx">
                <div class="header">
                    <div class="row">
                        <span class="AllLessons"></span>
                    </div>
                </div>
                <ul class="playlist" id="playlist"></ul>
            </div>
        </div>
    </section>
    <script>
 // Ensure allVideos is defined and not empty
    let allVideos = [
       {
          name: "cancer to crop genomics",
          src:"https://www.youtube.com/embed/WqYEJhdKVBs?si=NOLkb3UxqGT7qt4a" , 
            id: "vid_3"
        },
        {
            name: "programming with biology",
            src: "https://www.youtube.com/embed/iw90aiD6KV4?si=87QRYrF39YoMtIQf" ,
            id: "vid_4"
         },
       
         {
            name: "description about the biology",
            src:"https://www.youtube.com/embed/cv0v0qWyXJc?si=IrUmZ4uoNPfWgK0K" ,
            id: "vid_6"
         },
         {
            name: "What is Ransomware",
            src:"https://www.youtube.com/embed/F3HboZ2HArw?si=gsfreCwdX9s0UXAx"  ,
            id: "vid_7"
         },
         {
             name: "Nature and ourselves",
             src:"https://www.youtube.com/embed/1NtaUbfNgog?si=4Y64S7EoO6D1UU7v", 
               id: "vid_3"
           },
           {
               name: "Bioinformatics",
               src:"https://www.youtube.com/embed/V9GZ3FXEvI0?si=pFux2GXnPIZgf1vn",
               id: "vid_4"
            },
          
            {
               name: "Biology and data models",
               src:"https://www.youtube.com/embed/mm2bOpPq4hE?si=EYOFjwUS3aaTOFka",
               id: "vid_6"
            },
            {
               name: "web service Extension",
               src:"https://www.youtube.com/embed/6wJ5UM2gcS8?si=lQNu-pqlrQhbkH3E" ,
               id: "vid_7"
            },
            {
                name: "Bio Tools ",
                src:"https://www.youtube.com/embed/WjGJSeCMHtQ?si=g8anJQadSuctLopP", 
                  id: "vid_3"
              },
              {
                  name: "Optimal control in biology",
                  src:"https://www.youtube.com/embed/_z2BSdsB6pg?si=3ADpwUW3lmJmtixw", 
                    id: "vid_3"
                },
            


    ];

    // Ensure document content is fully loaded before executing script
    document.addEventListener('DOMContentLoaded', function() {
        const mainVideo = document.getElementById('main-Video');
        const videoTitle = document.querySelector('.title');
        const AllLessons = document.querySelector('.AllLessons');
        const playlist = document.getElementById('playlist');

        // Check if elements exist and handle them accordingly
        if (mainVideo && videoTitle && AllLessons && playlist) {
            AllLessons.textContent = `${allVideos.length} Lessons`;

            // Function to load a video based on index
            function loadVideo(index) {
                mainVideo.src = allVideos[index].src;
                videoTitle.textContent = `${index + 1}. ${allVideos[index].name}`;
            }

            // Populate playlist dynamically
            allVideos.forEach((video, index) => {
                const li = document.createElement('li');
                li.textContent = video.name;
                li.addEventListener('click', () => loadVideo(index));
                playlist.appendChild(li);
            });

            // Load initial video (optional)
            loadVideo(0);
        } else {
            console.error("One or more required elements are missing.");
        }
    });
    </script>
    </body>
</html>
