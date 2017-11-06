class MarkdownPipeline < Banzai::Pipeline
  def initialize(options = {})
    Rails.logger.info 'MarkdownPipeline#initialize'

    super(
      # As Markdown
      FrontmatterFilter,
      PHPInlinerFilter,
      InlineEscapeFilter,
      BlockEscapeFilter,
      AnchorFilter,
      TooltipFilter,
      CollapsibleFilter,
      TabbedExamplesFilter.new(options),
      TabbedContentFilter.new(options),
      CodeFilter,
      ModalFilter,
      JsSequenceDiagramFilter,
      PartialFilter,
      TechioFilter,
      TutorialsFilter,
      IconFilter,
      LanguageFilter,
      ColumnsFilter,
      MarkdownFilter,

      # As HTML
      UserPersonalizationFilter.new(options),
      HeadingFilter,
      LabelFilter,
      BreakFilter,
      UnfreezeFilter,
      ExternalLinkFilter
    )
  end
end
