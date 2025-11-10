
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h2>Programs</h2>
          <!--<p>Humanities and Social Sciences Building (HSSB) of Academia Sinica</p>-->
        </div>
        <h3 class="sub-heading"></h3>


{{~it.days :day:index}}
<!-- Schedule Day {{=index + 1}} -->
<div class="row">
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <h5><a class="nav-link active" href="#day-{{=index+1}}" role="tab" data-toggle="tab">
        {{=day.title}}
      </a></h5>
    </li>
  </ul>
</div>

<div class="tab-content row justify-content-center">
  <div role="tabpanel" class="col-11 tab-pane fade show active" id="day-{{=index+1}}">
    {{~day.periods :period}}
    <div class="row schedule-item">
      <div class="col-md-2"><time>{{=period.time}}</time></div>

      <div class="col-md-10">
        {{~period.sessions :session:index2}}
          {{?index2 !== 0}}
            <hr>
          {{?}}
          
          <div>
            <h4>
              {{=session.title}}
              {{?session.talks}}
                <a data-toggle="collapse" href="#collapse-{{=index}}-{{=period.time.replace(/[^0-9]/g, '')}}-{{=index2}}" role="button" aria-expanded="false" class="float-right collapse-toggle">
                  <i class="fa fa-chevron-down"></i>
                </a>
              {{?}}
              {{?session.location}}<br><span>{{=session.location}}</span>{{?}}
            </h4>
            {{?session.speaker}}
              <h7>Speaker: <a href="{{=session.speaker.link}}">{{=session.speaker.name}}</a>{{?session.speaker.affiliation}}, {{=session.speaker.affiliation}}{{?}}</h7><br/>
            {{?}}
            {{?session.chair}}
              <h7 class="chair">Chair: {{=session.chair}}</h7>
            {{?}}
            {{?session.image}}
            <div class="mt-2">
              <div class="speaker">
                <img src="{{=session.image}}" alt="{{=session.speaker.name}}">
              </div>
            {{?}}
            {{?session.subject}}
              <p>Subject: {{=session.subject}}</p>
            {{?}}
            {{?session.image}}</div>{{?}}

            {{?session.note}}
            <ul>
              {{~session.note :noteItem}}
                <li class="text-muted">{{=noteItem}}</li>
              {{~}}
            </ul>
            {{?}}
            
            {{?session.talks}}
            <div class="collapse" id="collapse-{{=index}}-{{=period.time.replace(/[^0-9]/g, '')}}-{{=index2}}">
              <ul>
                {{~session.talks :talk}}
                  <li class="text-muted">
                    <span class="title">{{=talk.title}}</span>
                    {{?talk.author}}
                    <br/><span class="author">{{=talk.author}}</span>
                    {{?}}
                  </li>
                {{~}}
              </ul>
            </div>
            {{?}}
          </div>
        {{~}}
      </div>
    </div>
    {{~}}
  </div>
</div>
<br><br><br>
{{~}}


        </div>

        <br><br><br><br>

        <!-- Presentation Guidelines  -->
      </div>
    
