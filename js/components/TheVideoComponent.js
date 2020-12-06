export default {
    name: "VideoComponent",

    props: ["work"],

    template: `
         <section class="video-player">
            <i class="fas fa-film media-icon"></i></i>
            <video class="video" :src="'video/' + work.source" controls></video>
            <article>
            <h2>{{work.name}}</h2>
            <p class="programs">Programs: {{work.program}}</p>
            <p class="desc" >{{work.description}}</p>
            </article>
        </section>`
}