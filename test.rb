require 'aws-sdk-textract'

client = Aws::Textract::Client.new(
  region:      'ap-south-1',
  credentials: OpenStruct.new(credentials: OpenStruct.new(access_key_id: 'XXX', secret_access_key: "XXX")),
)

doc = client.detect_document_text(document: { bytes: URI.open("../OTH-122122-00025.png").read })


exp = client.analyze_expense(document: { bytes: URI.open("../OTH-122122-00025.png").read })

