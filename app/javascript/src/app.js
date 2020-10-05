import AnchorJS from 'anchor-js'
const anchors = new AnchorJS()

export default class App {

  constructor(){
    let me = this
    document.addEventListener("turbolinks:load", function(){
      me.scrollSidbar()
      me.anchorsPage()
    })
  }

  scrollSidbar(){
    let scrollTop = localStorage.getItem('scrollTop') || 0
    let sidebar = document.querySelector(".sidebar")

    sidebar.scrollTo({top: scrollTop})

    sidebar.addEventListener('scroll', function(e) {
      localStorage.setItem('scrollTop', sidebar.scrollTop)
    })
  }

  anchorsPage(){
    anchors.options = {
      icon: "#",
      visible: 'always'
    };
    anchors.add('.section > h3')
  }
}
