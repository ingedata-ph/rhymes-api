#!/usr/bin/env ruby

VALIDATORS = {
  "schema/output/image_segmentations.json" => "example/image_segmentation.json"
}

VALIDATORS.each do |schema, example|
  system("jsonlint #{example} --validate #{schema} --environment json-schema-draft-07")
end