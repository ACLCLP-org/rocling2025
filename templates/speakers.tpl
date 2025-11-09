<div class="container wow fadeInUp">
    <div class="section-header">
        <h2 id="tutorial-section">Tutorial</h2>
    </div>
    <h3 class="sub-heading"></h3>

    <!-- Speakers introduction Section -->
    {{~it.Tutorial :introduction:index}}
    <div class="row mb-4 introduction-item">
        <div class="col-md-2">
            {{?introduction.img}}
            <div class="speaker">
            <img src="{{=introduction.img}}" alt="{{=introduction.speaker.name}}">
            </div>
            {{?}}
        </div>
        <div class="col-md-10">
            {{?introduction.speaker.name}}
            <h5><b>Speaker</b>: <a href="{{=introduction.speaker.link}}">{{=introduction.speaker.name}}</a>{{?introduction.speaker.affiliation}}, <br>{{=introduction.speaker.affiliation}}{{?}}</h5>
            {{?}}
            <p class="introduction-desc">{{=introduction.description}}</p>
        </div>
    </div>
    {{~}}
</div>

<br><br><br><br>


<div class="container wow fadeInUp">
    <div class="section-header">
        <h2>Keynote Speeches</h2>
    </div>
    <h3 class="sub-heading"></h3>

    <!-- Speakers introduction Section -->
    {{~it.Keynote :introduction:index}}
    <div class="row mb-4 introduction-item" id="{{=introduction.title.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '')}}">
        <div class="col-md-2">
            {{?introduction.img}}
            <div class="speaker">
            <img src="{{=introduction.img}}" alt="{{=introduction.speaker.name}}">
            </div>
            {{?}}
        </div>
        <div class="col-md-10">
            <h4>
            {{=introduction.title}}
            {{?introduction.location}} <span>{{=introduction.location}}</span>{{?}}
            </h4>
            {{?introduction.speaker.name}}
            <h5>Speaker: <a href="{{=introduction.speaker.link}}">{{=introduction.speaker.name}}</a>{{?introduction.speaker.affiliation}}, {{=introduction.speaker.affiliation}}{{?}}</h5>
            {{?}}
            {{?introduction.abstract}}
            <p class="introduction-desc"><br><b>Abstract: </b>{{=introduction.abstract}}</p>
            {{?}}
            {{?introduction.description}}
            <p class="introduction-desc"><br><b>Bio: </b>{{=introduction.description}}</p>
            {{?}}
        </div>
    </div>
    {{~}}
</div>