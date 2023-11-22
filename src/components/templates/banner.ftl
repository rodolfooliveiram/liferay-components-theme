<div class="banner-with-img">
  <div class="row">
    <div class="col-md-5 d-md-flex flex-column justify-content-center align-items-start text-center text-md-left mb-4 mb-md-0">
      <#if (Text75954537.getData())??>
        <h1 class="mb-4">
          ${Text75954537.getData()}
        </h1>
      </#if>
      <#if (Text96339506.getData())??>
        <p class="mb-5">
          ${Text96339506.getData()}
        </p>
      </#if>
      <#if (Text80650397.getData())??>
        <a href="#" class="btn-primary py-3 px-5 font-weight-bold d-inline-block">
          ${Text80650397.getData()}
        </a>
      </#if>
    </div>
    <div class="col-md-7 d-flex justify-content-center">
      <#if (Image05002791.getData())?? && Image05002791.getData() !="" && (Image35430245.getData())?? && Image35430245.getData() !="" && (Text62664614.getData())??>
        <img srcset="${Image35430245.getData()} 800w,	${Image05002791.getData()} 1400w" sizes="(max-width: 768px) 768px, 1400px" alt="${Text62664614.getData()}" />
      </#if>
    </div>
  </div>
</div>