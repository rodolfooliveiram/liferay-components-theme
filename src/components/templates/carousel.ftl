<#if ImageSlide.getSiblings()?has_content>
  <div class="container">
    <div class="carousel-template">
      <#list ImageSlide.getSiblings() as cur_ImageSlide>
        <div class="slide-item">
          <div class="m-2 p-2">
            <#if (cur_ImageSlide.getData())?? && cur_ImageSlide.getData() !="">
              <img class="w-100" alt="${cur_ImageSlide.getAttribute("alt")}" data-fileentryid="${cur_ImageSlide.getAttribute("fileEntryId")}" src="${cur_ImageSlide.getData()}" />
            </#if>
          </div>
        </div>
      </#list>
    </div>
  </div>
</#if>