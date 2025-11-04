<div class="container">
  <div class="section-header">
    <h2>Organization</h2>
  </div>

  {{~it.sections :section}}
    <h3>{{=section.title}}</h3>
    <div class="row">
      {{~section.members :member}}
        <div class="col">
          <div class="row">
            <div class="col py-3 d-flex align-items-center">
              <div class="image">
                <img src="{{=member.img}}" {{?member.imgStyle}}style="{{=member.imgStyle}}"{{?}}>
              </div>
              <p>
                <span class="chair">
                  <a href="{{=member.link}}" target="_blank">{{=member.name}}</a>
                </span><br>
                {{=member.affiliation}}<br>
                <a href="mailto:{{=member.email}}?subject:[ROCLING 2025] Quesions">{{=member.email}}</a>
              </p>
            </div>
          </div>
        </div>
      {{~}}
    </div>
    <br><br>
  {{~}}

  <h3>Organized by</h3>
  <div class="organized row">
    {{~it.organizers :org}}
      <div class="col-md-10 col-lg-10 py-4">
        <div class="organizedBy_image">
          {{?org.link}}<a href="{{=org.link}}" target="_blank">{{?}}
            <img src="{{=org.logo}}">
          {{?org.link}}</a>{{?}}
          {{?org.name}}<br>{{=org.name}}{{?}}
        </div>
      </div>
    {{~}}
  </div>
  <h3>Co-Organized by</h3>
  <div class="organized row">
    {{~it.CoOrganizers :org}}
      <div class="col-md-10 col-lg-10 py-4">
        <div class="organizedBy_image">
          {{?org.link}}<a href="{{=org.link}}" target="_blank">{{?}}
            <img src="{{=org.logo}}">
          {{?org.link}}</a>{{?}}
          {{?org.name}}<br>{{=org.name}}{{?}}
        </div>
      </div>
    {{~}}
  </div>
  
  <br><br>
</div>

