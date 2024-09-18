<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Optometry Playlist by EyeSmart — American Academy of Ophthalmology</title>
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
        <h1>Optometry tutorial by EyeSmart — American Academy of Ophthalmology</h1>
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
          name: "Glaucoma",
          src: "https://www.youtube.com/embed/vtQn07eWibc?si=ZzRVy1euamwvcl4u" ,
            id: "vid_3"
        },
        {
            name: "Eye Care",
            src:"https://www.youtube.com/embed/K9v5-1NnyRM?si=ANe7SR6s1T3aABjx" ,
            id: "vid_4"
         },
       
         {
            name: "Spectacle",
            src: "https://www.youtube.com/embed/ntK4pM_Hqx8?si=XJZ2LzWrrXaAd-Pd"  ,
            id: "vid_6"
         },
         {
            name: "Crizal",
            src:"https://www.youtube.com/embed/OlDHgkUWVBc?si=aUbFN0zb5ZU5RacG"  ,
            id: "vid_7"
         },
         {
            name: "EyeMaginationd",
            src: "https://www.youtube.com/embed/2j6SjECTn6g?si=xdw64yUNl8xZ6rLJ" ,
            id: "vid_8"
         },
         {
            name: "Dilated Eye",
            src: "https://www.youtube.com/embed/CmJJ-A57MTw?si=Hqb3eqs72j50IrS0",
            id: "vid_9"
         },
         {
            name: "Recal 20Sec",
            src: "https://www.youtube.com/embed/M6IlOKXlCqs?si=ZGiE7vGfFItZaFm8",
            id: "vid_10"
         },
         {
            name: "How Eye Work",
            src: "https://www.youtube.com/embed/44AIJANDG90?si=94NMqU8BQk6BVn-R" ,
            id: "vid_11"
         },
         {
            name: "Wommens Eye Weaar",
            src: "https://www.youtube.com/embed/i3_n3Ibfn1c?si=rOWZfELyhVh6N5DV",
            id: "vid_12"
         },
         {
             name: "Ontario",
             src: "https://www.youtube.com/embed/lBKJIQj73Ks?si=Z13IXoBmVgCHXZ8X" ,
             id: "vid_12"
          },
          {
              name: "Forest",
              src: "https://www.youtube.com/embed/tCIyCc2HCpI?si=n1AEwkJPHnEZt700",
              id: "vid_12"
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
