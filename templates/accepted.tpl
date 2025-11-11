
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h2>Accepted Papers</h2>
          <p></p>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-11">
            <div class="row">
              {{~it.Section :section:index}}
                {{? index === 0 || index === Math.ceil(it.Section.length / 2) }}
                  <div class="col-lg-6">
                {{?}}
                
                <h3>{{=section.title}}</h3>
                
                {{~section.category :cat}}
                  <h4>{{=cat.name}}</h4>
                  
                  {{~cat.session :sess}}
                    <div id="{{=(cat.name + '-' + sess.name).toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '')}}">
                      <h5>{{=sess.name}}</h5>
                      
                      <!--<h5>{{?sess.name.includes('Session:')}}<mark>{{=sess.name}}</mark>{{??}}{{=sess.name}}{{?}}</h5>-->

                      {{?sess.papers}}
                        <ul>
                          {{~sess.papers :paper}}
                            <li>
                              <strong>{{=paper.title}}</strong><br/>
                              <span class="text-muted">{{=paper.author}}</span>
                            </li>
                          {{~}}
                        </ul>
                      {{?}}
                    </div>
                  {{~}}
                  <br/>
                {{~}}
                <br/>
                
                {{? index === Math.ceil(it.Section.length / 2) - 1 || index === it.Section.length - 1 }}
                  </div>
                {{?}}
              {{~}}
            </div>
          </div>
        </div>
      </div>
