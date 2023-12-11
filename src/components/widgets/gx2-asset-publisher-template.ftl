<#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")>
  <#if entries?has_content>
    <div class="case-carousel p-3">
      <#list entries as curEntry>
        <#assign assetRenderer=curEntry.getAssetRenderer() />
        <#assign journalArticle=assetRenderer.getAssetObject() />
        <#assign DDMFormFieldValuesReferencesMap=journalArticle.getDDMFormValues().getDDMFormFieldValuesReferencesMap(true) />
        <#assign caseTitle=DDMFormFieldValuesReferencesMap["caseTitle"]
          [0].getValue().getString(locale) />
        <#assign caseSummary=DDMFormFieldValuesReferencesMap["caseSummary"]
          [0].getValue().getString(locale) />
        <#assign caseThumbJSONString=DDMFormFieldValuesReferencesMap["caseThumb"]
          [0].getValue().getString(locale) />
        <#assign caseCategories=curEntry.getCategories() />
        <#assign caseThumbJSON=caseThumbJSONString?eval />
        <#assign caseURLTitle=journalArticle.getUrlTitle() />
        <div class="case">
          <div class="row flex-column justify-content-between flex-md-row m-0">
            <div class="case-img-wrapper col-md-4 d-flex justify-content-center p-0">
              <a href="http://localhost:8080/web/gx2/w/${caseURLTitle}">
                <img class="case-img w-100 h-100" src="${caseThumbJSON.url}" alt="">
              </a>
            </div>
            <div class="col-md-8 d-sm-flex flex-column justify-content-between px-md-4 py-2 mt-2 mt-md-0">
              <div>
                <h2 class="font-weight-bold mb-3">
                  <a class="title-link" href="http://localhost:8080/web/gx2/w/${caseURLTitle}">
                    ${caseTitle}
                  </a>
                </h2>
                <p class="d-none d-sm-block">
                  ${caseSummary}
                </p>
              </div>
              <div class="d-flex flex-wrap">
                <#list caseCategories as category>
                  <#assign categoryName=category.getName() />
                  <#assign categoryIsLowerCase=stringUtil.lowerCase(category.getName()) />
                  <#assign categoryCSSClass=stringUtil.replace(categoryIsLowerCase, " " , "-" ) />
                  <a href="http://localhost:8080/web/gx2/w/${caseURLTitle}" class="category ${categoryCSSClass} px-2 py-1 mb-2 md-sm-0">
                    ${categoryName}
                  </a>
                </#list>
              </div>
            </div>
          </div>
        </div>
      </#list>
    </div>
  </#if>