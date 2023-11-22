<div class="container">
  <div class="row gx-1">
    <#if Fieldset24651741.getSiblings()?has_content>
      <#list Fieldset24651741.getSiblings() as cur_Fieldset24651741>
        <div class="col-4">
          <div class="card">
            <#if (cur_Fieldset24651741.Image58998311.getData())?? && cur_Fieldset24651741.Image58998311.getData() !="">
              <img class="card-img-top" data-fileentryid="${cur_Fieldset24651741.Image58998311.getAttribute("fileEntryId")}" src="${cur_Fieldset24651741.Image58998311.getData()}" alt="${cur_Fieldset24651741.Image58998311.getAttribute("alt")}">
            </#if>
            <div class="card-body">
              <#if (cur_Fieldset24651741.Text58099007.getData())??>
                <h5 class="card-title">
                  ${cur_Fieldset24651741.Text58099007.getData()}
                </h5>
              </#if>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
      </#list>
    </#if>
  </div>
</div>