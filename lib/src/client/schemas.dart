part of genomics_v1beta_api;

/** A beacon represents whether any variant call in a variant set has a specific allele at a particular position. */
class Beacon {

  /** True if the allele exists on any variant call, false otherwise. */
  core.bool exists;

  /** Create new Beacon from JSON data */
  Beacon.fromJson(core.Map json) {
    if (json.containsKey("exists")) {
      exists = json["exists"];
    }
  }

  /** Create JSON Object for Beacon */
  core.Map toJson() {
    var output = new core.Map();

    if (exists != null) {
      output["exists"] = exists;
    }

    return output;
  }

  /** Return String representation of Beacon */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Call represents the determination of genotype with respect to a particular variant. It may include associated information such as quality and phasing. For example, a Call might assign a probability of 0.32 to the occurrence of a SNP named rs1234 in a call set with the name NA12345. */
class Call {

  /** The ID of the call set this variant call belongs to. */
  core.String callSetId;

  /** The name of the call set this variant call belongs to. */
  core.String callSetName;

  /**  */
  core.String callsetId;

  /**  */
  core.String callsetName;

  /** The genotype of this variant call. Each value represents either the value of the referenceBases field or a 1-based index into alternateBases. If a variant had a referenceBases field of "T" and an alternateBases value of ["A", "C"], and the genotype was [2, 1], that would mean the call represented the heterozygous value "CA" for this variant. If the genotype was instead [0, 1], the represented value would be "TA". Ordering of the genotype values is important if the phaseset field is present. If a genotype is not called (that is, a "." is present in the GT string) -1 is returned. */
  core.List<core.int> genotype;

  /** The genotype likelihoods for this variant call. Each array entry represents how likely a specific genotype is for this call. The value ordering is defined by the GL tag in the VCF spec. */
  core.List<core.num> genotypeLikelihood;

  /** A map of additional variant call information. */
  core.Map<core.String, core.List<core.String>> info;

  /** If this field is present, this variant call's genotype ordering implies the phase of the bases and is consistent with any other variant calls on the same contig which have the same phaseset value. When importing data from VCF, if the genotype data was phased but no phase set was specified this field will be set to "*". */
  core.String phaseset;

  /** Create new Call from JSON data */
  Call.fromJson(core.Map json) {
    if (json.containsKey("callSetId")) {
      callSetId = json["callSetId"];
    }
    if (json.containsKey("callSetName")) {
      callSetName = json["callSetName"];
    }
    if (json.containsKey("callsetId")) {
      callsetId = json["callsetId"];
    }
    if (json.containsKey("callsetName")) {
      callsetName = json["callsetName"];
    }
    if (json.containsKey("genotype")) {
      genotype = json["genotype"].toList();
    }
    if (json.containsKey("genotypeLikelihood")) {
      genotypeLikelihood = json["genotypeLikelihood"].toList();
    }
    if (json.containsKey("info")) {
      info = _mapMap(json["info"], (infoItem) => infoItem.toList());
    }
    if (json.containsKey("phaseset")) {
      phaseset = json["phaseset"];
    }
  }

  /** Create JSON Object for Call */
  core.Map toJson() {
    var output = new core.Map();

    if (callSetId != null) {
      output["callSetId"] = callSetId;
    }
    if (callSetName != null) {
      output["callSetName"] = callSetName;
    }
    if (callsetId != null) {
      output["callsetId"] = callsetId;
    }
    if (callsetName != null) {
      output["callsetName"] = callsetName;
    }
    if (genotype != null) {
      output["genotype"] = genotype.toList();
    }
    if (genotypeLikelihood != null) {
      output["genotypeLikelihood"] = genotypeLikelihood.toList();
    }
    if (info != null) {
      output["info"] = _mapMap(info, (infoItem) => infoItem.toList());
    }
    if (phaseset != null) {
      output["phaseset"] = phaseset;
    }

    return output;
  }

  /** Return String representation of Call */
  core.String toString() => JSON.encode(this.toJson());

}

/** A CallSet is a collection of variant calls. It belongs to a variant set. */
class CallSet {

  /** The date this call set was created in milliseconds from the epoch. */
  core.int created;

  /** The Google generated ID of the call set, immutable. */
  core.String id;

  /** A map of additional callset information. */
  core.Map<core.String, core.List<core.String>> info;

  /** The callset name. */
  core.String name;

  /** The sample ID this call set corresponds to. */
  core.String sampleId;

  /** The IDs of the variant sets this call set belongs to. */
  core.List<core.String> variantSetIds;

  /**  */
  core.String variantsetId;

  /** Create new CallSet from JSON data */
  CallSet.fromJson(core.Map json) {
    if (json.containsKey("created")) {
      created = (json["created"] is core.String) ? core.int.parse(json["created"]) : json["created"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("info")) {
      info = _mapMap(json["info"], (infoItem) => infoItem.toList());
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sampleId")) {
      sampleId = json["sampleId"];
    }
    if (json.containsKey("variantSetIds")) {
      variantSetIds = json["variantSetIds"].toList();
    }
    if (json.containsKey("variantsetId")) {
      variantsetId = json["variantsetId"];
    }
  }

  /** Create JSON Object for CallSet */
  core.Map toJson() {
    var output = new core.Map();

    if (created != null) {
      output["created"] = created;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (info != null) {
      output["info"] = _mapMap(info, (infoItem) => infoItem.toList());
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sampleId != null) {
      output["sampleId"] = sampleId;
    }
    if (variantSetIds != null) {
      output["variantSetIds"] = variantSetIds.toList();
    }
    if (variantsetId != null) {
      output["variantsetId"] = variantsetId;
    }

    return output;
  }

  /** Return String representation of CallSet */
  core.String toString() => JSON.encode(this.toJson());

}

/** ContigBound records an upper bound for the starting coordinate of variants in a particular contig. */
class ContigBound {

  /** The contig the bound is associate with. */
  core.String contig;

  /** An upper bound (inclusive) on the starting coordinate of any variant in the contig. */
  core.int upperBound;

  /** Create new ContigBound from JSON data */
  ContigBound.fromJson(core.Map json) {
    if (json.containsKey("contig")) {
      contig = json["contig"];
    }
    if (json.containsKey("upperBound")) {
      upperBound = (json["upperBound"] is core.String) ? core.int.parse(json["upperBound"]) : json["upperBound"];
    }
  }

  /** Create JSON Object for ContigBound */
  core.Map toJson() {
    var output = new core.Map();

    if (contig != null) {
      output["contig"] = contig;
    }
    if (upperBound != null) {
      output["upperBound"] = upperBound;
    }

    return output;
  }

  /** Return String representation of ContigBound */
  core.String toString() => JSON.encode(this.toJson());

}

/** A bucket over which read coverage has been precomputed. A bucket corresponds to a specific range of the reference sequence. */
class CoverageBucket {

  /** The average number of reads which are aligned to each individual reference base in this bucket. */
  core.num meanCoverage;

  /** The genomic coordinate range spanned by this bucket. */
  GenomicRange range;

  /** Create new CoverageBucket from JSON data */
  CoverageBucket.fromJson(core.Map json) {
    if (json.containsKey("meanCoverage")) {
      meanCoverage = json["meanCoverage"];
    }
    if (json.containsKey("range")) {
      range = new GenomicRange.fromJson(json["range"]);
    }
  }

  /** Create JSON Object for CoverageBucket */
  core.Map toJson() {
    var output = new core.Map();

    if (meanCoverage != null) {
      output["meanCoverage"] = meanCoverage;
    }
    if (range != null) {
      output["range"] = range.toJson();
    }

    return output;
  }

  /** Return String representation of CoverageBucket */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Dataset is a collection of genomic data. */
class Dataset {

  /** The Google generated ID of the dataset, immutable. */
  core.String id;

  /** Flag indicating whether or not a dataset is publicly viewable. If a dataset is not public, it inherits viewing permissions from its project. */
  core.bool isPublic;

  /** The dataset name. */
  core.String name;

  /** The Google Developers Console project number that this dataset belongs to. */
  core.int projectId;

  /** Create new Dataset from JSON data */
  Dataset.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isPublic")) {
      isPublic = json["isPublic"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
  }

  /** Create JSON Object for Dataset */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (isPublic != null) {
      output["isPublic"] = isPublic;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }

    return output;
  }

  /** Return String representation of Dataset */
  core.String toString() => JSON.encode(this.toJson());

}

/** The job creation request. */
class ExperimentalCreateJobRequest {

  /** Specifies whether or not to run the alignment pipeline. At least one of align or call_variants must be provided. */
  core.bool align;

  /** Specifies whether or not to run the variant calling pipeline. If specified, alignment will be performed first and the aligned BAMs will passed as input to the variant caller. At least one of align or call_variants must be provided. */
  core.bool callVariants;

  /** Specifies where to copy the results of certain pipelines. This shoud be in the form of "gs://bucket/path". */
  core.String gcsOutputPath;

  /** A list of Google Cloud Storage URIs of paired end .fastq files to operate upon. If specified, this represents the second file of each paired .fastq file. The first file of each pair should be specified in "sourceUris". */
  core.List<core.String> pairedSourceUris;

  /** Required. The Google Cloud Project ID with which to associate the request. */
  core.int projectId;

  /** A list of Google Cloud Storage URIs of data files to operate upon. These can be .bam, interleaved .fastq, or paired .fastq. If specifying paired .fastq files, the first of each pair of files should be listed here, and the second of each pair should be listed in "pairedSourceUris". */
  core.List<core.String> sourceUris;

  /** Create new ExperimentalCreateJobRequest from JSON data */
  ExperimentalCreateJobRequest.fromJson(core.Map json) {
    if (json.containsKey("align")) {
      align = json["align"];
    }
    if (json.containsKey("callVariants")) {
      callVariants = json["callVariants"];
    }
    if (json.containsKey("gcsOutputPath")) {
      gcsOutputPath = json["gcsOutputPath"];
    }
    if (json.containsKey("pairedSourceUris")) {
      pairedSourceUris = json["pairedSourceUris"].toList();
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = json["sourceUris"].toList();
    }
  }

  /** Create JSON Object for ExperimentalCreateJobRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (align != null) {
      output["align"] = align;
    }
    if (callVariants != null) {
      output["callVariants"] = callVariants;
    }
    if (gcsOutputPath != null) {
      output["gcsOutputPath"] = gcsOutputPath;
    }
    if (pairedSourceUris != null) {
      output["pairedSourceUris"] = pairedSourceUris.toList();
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (sourceUris != null) {
      output["sourceUris"] = sourceUris.toList();
    }

    return output;
  }

  /** Return String representation of ExperimentalCreateJobRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The job creation response. */
class ExperimentalCreateJobResponse {

  /** A job ID that can be used to get status information. */
  core.String jobId;

  /** Create new ExperimentalCreateJobResponse from JSON data */
  ExperimentalCreateJobResponse.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
  }

  /** Create JSON Object for ExperimentalCreateJobResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }

    return output;
  }

  /** Return String representation of ExperimentalCreateJobResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset export request. */
class ExportReadsetsRequest {

  /** A Google Cloud Storage URI where the exported BAM file will be created. The currently authenticated user must have write access to the new file location. An error will be returned if the URI already contains data. */
  core.String exportUri;

  /** The Google Developers Console project number that owns this export. This is the project that will be billed. */
  core.int projectId;

  /** The IDs of the readsets to export. */
  core.List<core.String> readsetIds;

  /** The reference names to export. If this is not specified, all reference sequences are exported. Use '*' to export unmapped reads. */
  core.List<core.String> referenceNames;

  /** Create new ExportReadsetsRequest from JSON data */
  ExportReadsetsRequest.fromJson(core.Map json) {
    if (json.containsKey("exportUri")) {
      exportUri = json["exportUri"];
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
    if (json.containsKey("readsetIds")) {
      readsetIds = json["readsetIds"].toList();
    }
    if (json.containsKey("referenceNames")) {
      referenceNames = json["referenceNames"].toList();
    }
  }

  /** Create JSON Object for ExportReadsetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (exportUri != null) {
      output["exportUri"] = exportUri;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (readsetIds != null) {
      output["readsetIds"] = readsetIds.toList();
    }
    if (referenceNames != null) {
      output["referenceNames"] = referenceNames.toList();
    }

    return output;
  }

  /** Return String representation of ExportReadsetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset export response. */
class ExportReadsetsResponse {

  /** A job ID that can be used to get status information. */
  core.String jobId;

  /** Create new ExportReadsetsResponse from JSON data */
  ExportReadsetsResponse.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
  }

  /** Create JSON Object for ExportReadsetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }

    return output;
  }

  /** Return String representation of ExportReadsetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant data export request. */
class ExportVariantsRequest {

  /** The BigQuery dataset to export data to. Note that this is distinct from the Genomics concept of "dataset". The caller must have WRITE access to this BigQuery dataset. */
  core.String bigqueryDataset;

  /** The BigQuery table to export data to. The caller must have WRITE access to this BigQuery table. */
  core.String bigqueryTable;

  /** If provided, only variant call information from the specified call sets will be exported. By default all variant calls are exported. */
  core.List<core.String> callSetIds;

  /**  */
  core.List<core.String> callsetIds;

  /** The format for the exported data. */
  core.String format;

  /** The Google Cloud project number that owns this export. This is the project that will be billed. */
  core.int projectId;

  /** Required. The ID of the variant set that contains variant data which should be exported. The caller must have READ access to this variant set. */
  core.String variantSetId;

  /**  */
  core.String variantsetId;

  /** Create new ExportVariantsRequest from JSON data */
  ExportVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("bigqueryDataset")) {
      bigqueryDataset = json["bigqueryDataset"];
    }
    if (json.containsKey("bigqueryTable")) {
      bigqueryTable = json["bigqueryTable"];
    }
    if (json.containsKey("callSetIds")) {
      callSetIds = json["callSetIds"].toList();
    }
    if (json.containsKey("callsetIds")) {
      callsetIds = json["callsetIds"].toList();
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
    if (json.containsKey("variantSetId")) {
      variantSetId = json["variantSetId"];
    }
    if (json.containsKey("variantsetId")) {
      variantsetId = json["variantsetId"];
    }
  }

  /** Create JSON Object for ExportVariantsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (bigqueryDataset != null) {
      output["bigqueryDataset"] = bigqueryDataset;
    }
    if (bigqueryTable != null) {
      output["bigqueryTable"] = bigqueryTable;
    }
    if (callSetIds != null) {
      output["callSetIds"] = callSetIds.toList();
    }
    if (callsetIds != null) {
      output["callsetIds"] = callsetIds.toList();
    }
    if (format != null) {
      output["format"] = format;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (variantSetId != null) {
      output["variantSetId"] = variantSetId;
    }
    if (variantsetId != null) {
      output["variantsetId"] = variantsetId;
    }

    return output;
  }

  /** Return String representation of ExportVariantsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant data export response. */
class ExportVariantsResponse {

  /** A job ID that can be used to get status information. */
  core.String jobId;

  /** Create new ExportVariantsResponse from JSON data */
  ExportVariantsResponse.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
  }

  /** Create JSON Object for ExportVariantsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }

    return output;
  }

  /** Return String representation of ExportVariantsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** An inclusive, exclusive genomic coordinate range over a reference sequence. */
class GenomicRange {

  /** The end position of the range on the reference, 1-based exclusive. If specified, sequenceName must also be specified. */
  core.String sequenceEnd;

  /** The reference sequence name, for example "chr1", "1", or "chrX". */
  core.String sequenceName;

  /** The start position of the range on the reference, 1-based inclusive. If specified, sequenceName must also be specified. */
  core.String sequenceStart;

  /** Create new GenomicRange from JSON data */
  GenomicRange.fromJson(core.Map json) {
    if (json.containsKey("sequenceEnd")) {
      sequenceEnd = json["sequenceEnd"];
    }
    if (json.containsKey("sequenceName")) {
      sequenceName = json["sequenceName"];
    }
    if (json.containsKey("sequenceStart")) {
      sequenceStart = json["sequenceStart"];
    }
  }

  /** Create JSON Object for GenomicRange */
  core.Map toJson() {
    var output = new core.Map();

    if (sequenceEnd != null) {
      output["sequenceEnd"] = sequenceEnd;
    }
    if (sequenceName != null) {
      output["sequenceName"] = sequenceName;
    }
    if (sequenceStart != null) {
      output["sequenceStart"] = sequenceStart;
    }

    return output;
  }

  /** Return String representation of GenomicRange */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variants summary response. */
class GetVariantsSummaryResponse {

  /** A list of all contigs used by the variants in a dataset with associated coordinate upper bounds for each one. */
  core.List<ContigBound> contigBounds;

  /** The metadata associated with this dataset. */
  core.List<Metadata> metadata;

  /** Create new GetVariantsSummaryResponse from JSON data */
  GetVariantsSummaryResponse.fromJson(core.Map json) {
    if (json.containsKey("contigBounds")) {
      contigBounds = json["contigBounds"].map((contigBoundsItem) => new ContigBound.fromJson(contigBoundsItem)).toList();
    }
    if (json.containsKey("metadata")) {
      metadata = json["metadata"].map((metadataItem) => new Metadata.fromJson(metadataItem)).toList();
    }
  }

  /** Create JSON Object for GetVariantsSummaryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (contigBounds != null) {
      output["contigBounds"] = contigBounds.map((contigBoundsItem) => contigBoundsItem.toJson()).toList();
    }
    if (metadata != null) {
      output["metadata"] = metadata.map((metadataItem) => metadataItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of GetVariantsSummaryResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Header {

  /** (SO) Sorting order of alignments. */
  core.String sortingOrder;

  /** (VN) BAM format version. */
  core.String version;

  /** Create new Header from JSON data */
  Header.fromJson(core.Map json) {
    if (json.containsKey("sortingOrder")) {
      sortingOrder = json["sortingOrder"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for Header */
  core.Map toJson() {
    var output = new core.Map();

    if (sortingOrder != null) {
      output["sortingOrder"] = sortingOrder;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of Header */
  core.String toString() => JSON.encode(this.toJson());

}

/** The header section of the BAM/SAM file. */
class HeaderSection {

  /** (@CO) One-line text comments. */
  core.List<core.String> comments;

  /** [Deprecated] This field is deprecated and will no longer be populated. Please use filename instead. */
  core.String fileUri;

  /** The name of the file from which this data was imported. */
  core.String filename;

  /** (@HD) The header line. */
  core.List<Header> headers;

  /** (@PG) Programs. */
  core.List<Program> programs;

  /** (@RG) Read group. */
  core.List<ReadGroup> readGroups;

  /** (@SQ) Reference sequence dictionary. */
  core.List<ReferenceSequence> refSequences;

  /** Create new HeaderSection from JSON data */
  HeaderSection.fromJson(core.Map json) {
    if (json.containsKey("comments")) {
      comments = json["comments"].toList();
    }
    if (json.containsKey("fileUri")) {
      fileUri = json["fileUri"];
    }
    if (json.containsKey("filename")) {
      filename = json["filename"];
    }
    if (json.containsKey("headers")) {
      headers = json["headers"].map((headersItem) => new Header.fromJson(headersItem)).toList();
    }
    if (json.containsKey("programs")) {
      programs = json["programs"].map((programsItem) => new Program.fromJson(programsItem)).toList();
    }
    if (json.containsKey("readGroups")) {
      readGroups = json["readGroups"].map((readGroupsItem) => new ReadGroup.fromJson(readGroupsItem)).toList();
    }
    if (json.containsKey("refSequences")) {
      refSequences = json["refSequences"].map((refSequencesItem) => new ReferenceSequence.fromJson(refSequencesItem)).toList();
    }
  }

  /** Create JSON Object for HeaderSection */
  core.Map toJson() {
    var output = new core.Map();

    if (comments != null) {
      output["comments"] = comments.toList();
    }
    if (fileUri != null) {
      output["fileUri"] = fileUri;
    }
    if (filename != null) {
      output["filename"] = filename;
    }
    if (headers != null) {
      output["headers"] = headers.map((headersItem) => headersItem.toJson()).toList();
    }
    if (programs != null) {
      output["programs"] = programs.map((programsItem) => programsItem.toJson()).toList();
    }
    if (readGroups != null) {
      output["readGroups"] = readGroups.map((readGroupsItem) => readGroupsItem.toJson()).toList();
    }
    if (refSequences != null) {
      output["refSequences"] = refSequences.map((refSequencesItem) => refSequencesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of HeaderSection */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset import request. */
class ImportReadsetsRequest {

  /** Required. The ID of the dataset these readsets will belong to. The caller must have WRITE permissions to this dataset. */
  core.String datasetId;

  /** A list of URIs pointing at BAM files in Google Cloud Storage. */
  core.List<core.String> sourceUris;

  /** Create new ImportReadsetsRequest from JSON data */
  ImportReadsetsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = json["sourceUris"].toList();
    }
  }

  /** Create JSON Object for ImportReadsetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (sourceUris != null) {
      output["sourceUris"] = sourceUris.toList();
    }

    return output;
  }

  /** Return String representation of ImportReadsetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset import response. */
class ImportReadsetsResponse {

  /** A job ID that can be used to get status information. */
  core.String jobId;

  /** Create new ImportReadsetsResponse from JSON data */
  ImportReadsetsResponse.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
  }

  /** Create JSON Object for ImportReadsetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }

    return output;
  }

  /** Return String representation of ImportReadsetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant data import request. */
class ImportVariantsRequest {

  /** The format of the variant data being imported. */
  core.String format;

  /** A list of URIs pointing at VCF files in Google Cloud Storage. See the VCF Specification for more details on the input format. */
  core.List<core.String> sourceUris;

  /** Required. The variant set to which variant data should be imported. */
  core.String variantSetId;

  /**  */
  core.String variantsetId;

  /** Create new ImportVariantsRequest from JSON data */
  ImportVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = json["sourceUris"].toList();
    }
    if (json.containsKey("variantSetId")) {
      variantSetId = json["variantSetId"];
    }
    if (json.containsKey("variantsetId")) {
      variantsetId = json["variantsetId"];
    }
  }

  /** Create JSON Object for ImportVariantsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (format != null) {
      output["format"] = format;
    }
    if (sourceUris != null) {
      output["sourceUris"] = sourceUris.toList();
    }
    if (variantSetId != null) {
      output["variantSetId"] = variantSetId;
    }
    if (variantsetId != null) {
      output["variantsetId"] = variantsetId;
    }

    return output;
  }

  /** Return String representation of ImportVariantsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant data import response. */
class ImportVariantsResponse {

  /** A job ID that can be used to get status information. */
  core.String jobId;

  /** Create new ImportVariantsResponse from JSON data */
  ImportVariantsResponse.fromJson(core.Map json) {
    if (json.containsKey("jobId")) {
      jobId = json["jobId"];
    }
  }

  /** Create JSON Object for ImportVariantsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobId != null) {
      output["jobId"] = jobId;
    }

    return output;
  }

  /** Return String representation of ImportVariantsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Job represents an ongoing process that can be monitored for status information. */
class Job {

  /** The date this job was created, in milliseconds from the epoch. */
  core.int created;

  /** A more detailed description of this job's current status. */
  core.String description;

  /** Any errors that occurred during processing. */
  core.List<core.String> errors;

  /** The job ID. */
  core.String id;

  /** If this Job represents an import, this field will contain the IDs of the objects that were successfully imported. */
  core.List<core.String> importedIds;

  /** The Google Developers Console project number to which this job belongs. */
  core.int projectId;

  /** A summarized representation of the original service request. */
  JobRequest request;

  /** The status of this job. */
  core.String status;

  /** Any warnings that occurred during processing. */
  core.List<core.String> warnings;

  /** Create new Job from JSON data */
  Job.fromJson(core.Map json) {
    if (json.containsKey("created")) {
      created = (json["created"] is core.String) ? core.int.parse(json["created"]) : json["created"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("importedIds")) {
      importedIds = json["importedIds"].toList();
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
    if (json.containsKey("request")) {
      request = new JobRequest.fromJson(json["request"]);
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].toList();
    }
  }

  /** Create JSON Object for Job */
  core.Map toJson() {
    var output = new core.Map();

    if (created != null) {
      output["created"] = created;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (errors != null) {
      output["errors"] = errors.toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (importedIds != null) {
      output["importedIds"] = importedIds.toList();
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (request != null) {
      output["request"] = request.toJson();
    }
    if (status != null) {
      output["status"] = status;
    }
    if (warnings != null) {
      output["warnings"] = warnings.toList();
    }

    return output;
  }

  /** Return String representation of Job */
  core.String toString() => JSON.encode(this.toJson());

}

/** A summary representation of the service request that spawned the job. */
class JobRequest {

  /** The data destination of the request, for example, a Google BigQuery Table or Dataset ID. */
  core.List<core.String> destination;

  /** The data source of the request, for example, a Google Cloud Storage object path or Readset ID. */
  core.List<core.String> source;

  /** The original request type. */
  core.String type;

  /** Create new JobRequest from JSON data */
  JobRequest.fromJson(core.Map json) {
    if (json.containsKey("destination")) {
      destination = json["destination"].toList();
    }
    if (json.containsKey("source")) {
      source = json["source"].toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for JobRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (destination != null) {
      output["destination"] = destination.toList();
    }
    if (source != null) {
      output["source"] = source.toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of JobRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class ListCoverageBucketsResponse {

  /** The length of each coverage bucket in base pairs. Note that buckets at the end of a reference sequence may be shorter. This value is omitted if the bucket width is infinity (the default behaviour, with no range or target_bucket_width). */
  core.String bucketWidth;

  /** The coverage buckets. The list of buckets is sparse; a bucket with 0 overlapping reads is not returned. A bucket never crosses more than one reference sequence. Each bucket has width bucket_width, unless its end is is the end of the reference sequence. */
  core.List<CoverageBucket> coverageBuckets;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** Create new ListCoverageBucketsResponse from JSON data */
  ListCoverageBucketsResponse.fromJson(core.Map json) {
    if (json.containsKey("bucketWidth")) {
      bucketWidth = json["bucketWidth"];
    }
    if (json.containsKey("coverageBuckets")) {
      coverageBuckets = json["coverageBuckets"].map((coverageBucketsItem) => new CoverageBucket.fromJson(coverageBucketsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ListCoverageBucketsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (bucketWidth != null) {
      output["bucketWidth"] = bucketWidth;
    }
    if (coverageBuckets != null) {
      output["coverageBuckets"] = coverageBuckets.map((coverageBucketsItem) => coverageBucketsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ListCoverageBucketsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The dataset list response. */
class ListDatasetsResponse {

  /** The list of matching Datasets. */
  core.List<Dataset> datasets;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** Create new ListDatasetsResponse from JSON data */
  ListDatasetsResponse.fromJson(core.Map json) {
    if (json.containsKey("datasets")) {
      datasets = json["datasets"].map((datasetsItem) => new Dataset.fromJson(datasetsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ListDatasetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (datasets != null) {
      output["datasets"] = datasets.map((datasetsItem) => datasetsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ListDatasetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Metadata describes a single piece of variant call metadata. These data include a top level key and either a single value string (value) or a list of key-value pairs (info.) Value and info are mutually exclusive. */
class Metadata {

  /** A textual description of this metadata. */
  core.String description;

  /** User-provided ID field, not enforced by this API. Two or more pieces of structured metadata with identical id and key fields are considered equivalent. */
  core.String id;

  /** Remaining structured metadata key-value pairs. */
  core.Map<core.String, core.List<core.String>> info;

  /** The top-level key. */
  core.String key;

  /** The number of values that can be included in a field described by this metadata. */
  core.String number;

  /** The type of data. Possible types include: Integer, Float, Flag, Character, and String. */
  core.String type;

  /** The value field for simple metadata */
  core.String value;

  /** Create new Metadata from JSON data */
  Metadata.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("info")) {
      info = _mapMap(json["info"], (infoItem) => infoItem.toList());
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("number")) {
      number = json["number"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Metadata */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (info != null) {
      output["info"] = _mapMap(info, (infoItem) => infoItem.toList());
    }
    if (key != null) {
      output["key"] = key;
    }
    if (number != null) {
      output["number"] = number;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Metadata */
  core.String toString() => JSON.encode(this.toJson());

}

class Program {

  /** (CL) Command line. */
  core.String commandLine;

  /** (ID) Program record identifier. */
  core.String id;

  /** (PN) Program name. */
  core.String name;

  /** (PP) Previous program ID. */
  core.String prevProgramId;

  /** (VN) Program version. */
  core.String version;

  /** Create new Program from JSON data */
  Program.fromJson(core.Map json) {
    if (json.containsKey("commandLine")) {
      commandLine = json["commandLine"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("prevProgramId")) {
      prevProgramId = json["prevProgramId"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for Program */
  core.Map toJson() {
    var output = new core.Map();

    if (commandLine != null) {
      output["commandLine"] = commandLine;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (prevProgramId != null) {
      output["prevProgramId"] = prevProgramId;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of Program */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Read is a group of bases that may or may not have been aligned to a reference. It contains quality information and other metadata. */
class Read {

  /** The originalBases after the cigar field has been applied. Deletions are represented with '-' and insertions are omitted. */
  core.String alignedBases;

  /** Represents the quality of each base in this read. Each character represents one base. To get the quality, take the ASCII value of the character and subtract 33. (QUAL) */
  core.String baseQuality;

  /** A condensed representation of how this read matches up to the reference. (CIGAR) */
  core.String cigar;

  /** Each bit of this number has a different meaning if enabled. See the full BAM spec for more details. (FLAG) */
  core.int flags;

  /** The Google generated ID of the read, immutable. */
  core.String id;

  /** A score up to 255 that represents how likely this read's aligned position is to be correct. A higher value is better. (MAPQ) */
  core.int mappingQuality;

  /** The 1-based start position of the paired read. (PNEXT) */
  core.int matePosition;

  /** The name of the sequence that the paired read is aligned to. This is usually the same as referenceSequenceName. (RNEXT) */
  core.String mateReferenceSequenceName;

  /** The name of the read. When imported from a BAM file, this is the query template name. (QNAME) */
  core.String name;

  /** The list of bases that this read represents (such as "CATCGA"). (SEQ) */
  core.String originalBases;

  /** The 1-based start position of the aligned read. If the first base starts at the very beginning of the reference sequence, then the position would be '1'. (POS) */
  core.int position;

  /** The ID of the readset this read belongs to. */
  core.String readsetId;

  /** The name of the sequence that this read is aligned to. This would be, for example, 'X' for the X Chromosome or '20' for Chromosome 20. (RNAME) */
  core.String referenceSequenceName;

  /** A map of additional read information. (TAG) */
  core.Map<core.String, core.List<core.String>> tags;

  /** Length of the original piece of DNA that produced both this read and the paired read. (TLEN) */
  core.int templateLength;

  /** Create new Read from JSON data */
  Read.fromJson(core.Map json) {
    if (json.containsKey("alignedBases")) {
      alignedBases = json["alignedBases"];
    }
    if (json.containsKey("baseQuality")) {
      baseQuality = json["baseQuality"];
    }
    if (json.containsKey("cigar")) {
      cigar = json["cigar"];
    }
    if (json.containsKey("flags")) {
      flags = json["flags"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("mappingQuality")) {
      mappingQuality = json["mappingQuality"];
    }
    if (json.containsKey("matePosition")) {
      matePosition = json["matePosition"];
    }
    if (json.containsKey("mateReferenceSequenceName")) {
      mateReferenceSequenceName = json["mateReferenceSequenceName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("originalBases")) {
      originalBases = json["originalBases"];
    }
    if (json.containsKey("position")) {
      position = json["position"];
    }
    if (json.containsKey("readsetId")) {
      readsetId = json["readsetId"];
    }
    if (json.containsKey("referenceSequenceName")) {
      referenceSequenceName = json["referenceSequenceName"];
    }
    if (json.containsKey("tags")) {
      tags = _mapMap(json["tags"], (tagsItem) => tagsItem.toList());
    }
    if (json.containsKey("templateLength")) {
      templateLength = json["templateLength"];
    }
  }

  /** Create JSON Object for Read */
  core.Map toJson() {
    var output = new core.Map();

    if (alignedBases != null) {
      output["alignedBases"] = alignedBases;
    }
    if (baseQuality != null) {
      output["baseQuality"] = baseQuality;
    }
    if (cigar != null) {
      output["cigar"] = cigar;
    }
    if (flags != null) {
      output["flags"] = flags;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (mappingQuality != null) {
      output["mappingQuality"] = mappingQuality;
    }
    if (matePosition != null) {
      output["matePosition"] = matePosition;
    }
    if (mateReferenceSequenceName != null) {
      output["mateReferenceSequenceName"] = mateReferenceSequenceName;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (originalBases != null) {
      output["originalBases"] = originalBases;
    }
    if (position != null) {
      output["position"] = position;
    }
    if (readsetId != null) {
      output["readsetId"] = readsetId;
    }
    if (referenceSequenceName != null) {
      output["referenceSequenceName"] = referenceSequenceName;
    }
    if (tags != null) {
      output["tags"] = _mapMap(tags, (tagsItem) => tagsItem.toList());
    }
    if (templateLength != null) {
      output["templateLength"] = templateLength;
    }

    return output;
  }

  /** Return String representation of Read */
  core.String toString() => JSON.encode(this.toJson());

}

class ReadGroup {

  /** (DT) Date the run was produced (ISO8601 date or date/time). */
  core.String date;

  /** (DS) Description. */
  core.String description;

  /** (FO) Flow order. The array of nucleotide bases that correspond to the nucleotides used for each flow of each read. */
  core.String flowOrder;

  /** (ID) Read group identifier. */
  core.String id;

  /** (KS) The array of nucleotide bases that correspond to the key sequence of each read. */
  core.String keySequence;

  /** (LS) Library. */
  core.String library;

  /** (PU) Platform unit. */
  core.String platformUnit;

  /** (PI) Predicted median insert size. */
  core.int predictedInsertSize;

  /** (PG) Programs used for processing the read group. */
  core.String processingProgram;

  /** (SM) Sample. */
  core.String sample;

  /** (CN) Name of sequencing center producing the read. */
  core.String sequencingCenterName;

  /** (PL) Platform/technology used to produce the reads. */
  core.String sequencingTechnology;

  /** Create new ReadGroup from JSON data */
  ReadGroup.fromJson(core.Map json) {
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("flowOrder")) {
      flowOrder = json["flowOrder"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("keySequence")) {
      keySequence = json["keySequence"];
    }
    if (json.containsKey("library")) {
      library = json["library"];
    }
    if (json.containsKey("platformUnit")) {
      platformUnit = json["platformUnit"];
    }
    if (json.containsKey("predictedInsertSize")) {
      predictedInsertSize = json["predictedInsertSize"];
    }
    if (json.containsKey("processingProgram")) {
      processingProgram = json["processingProgram"];
    }
    if (json.containsKey("sample")) {
      sample = json["sample"];
    }
    if (json.containsKey("sequencingCenterName")) {
      sequencingCenterName = json["sequencingCenterName"];
    }
    if (json.containsKey("sequencingTechnology")) {
      sequencingTechnology = json["sequencingTechnology"];
    }
  }

  /** Create JSON Object for ReadGroup */
  core.Map toJson() {
    var output = new core.Map();

    if (date != null) {
      output["date"] = date;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (flowOrder != null) {
      output["flowOrder"] = flowOrder;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (keySequence != null) {
      output["keySequence"] = keySequence;
    }
    if (library != null) {
      output["library"] = library;
    }
    if (platformUnit != null) {
      output["platformUnit"] = platformUnit;
    }
    if (predictedInsertSize != null) {
      output["predictedInsertSize"] = predictedInsertSize;
    }
    if (processingProgram != null) {
      output["processingProgram"] = processingProgram;
    }
    if (sample != null) {
      output["sample"] = sample;
    }
    if (sequencingCenterName != null) {
      output["sequencingCenterName"] = sequencingCenterName;
    }
    if (sequencingTechnology != null) {
      output["sequencingTechnology"] = sequencingTechnology;
    }

    return output;
  }

  /** Return String representation of ReadGroup */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Readset is a collection of Reads. */
class Readset {

  /** The ID of the dataset this readset belongs to. */
  core.String datasetId;

  /** File information from the original BAM import. See the BAM format specification for additional information on each field. */
  core.List<HeaderSection> fileData;

  /** The Google generated ID of the readset, immutable. */
  core.String id;

  /** The readset name, typically this is the sample name. */
  core.String name;

  /** Create new Readset from JSON data */
  Readset.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("fileData")) {
      fileData = json["fileData"].map((fileDataItem) => new HeaderSection.fromJson(fileDataItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Readset */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (fileData != null) {
      output["fileData"] = fileData.map((fileDataItem) => fileDataItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Readset */
  core.String toString() => JSON.encode(this.toJson());

}

/** ReferenceBound records an upper bound for the starting coordinate of variants in a particular reference. */
class ReferenceBound {

  /** The reference the bound is associate with. */
  core.String referenceName;

  /** An upper bound (inclusive) on the starting coordinate of any variant in the contig. */
  core.int upperBound;

  /** Create new ReferenceBound from JSON data */
  ReferenceBound.fromJson(core.Map json) {
    if (json.containsKey("referenceName")) {
      referenceName = json["referenceName"];
    }
    if (json.containsKey("upperBound")) {
      upperBound = (json["upperBound"] is core.String) ? core.int.parse(json["upperBound"]) : json["upperBound"];
    }
  }

  /** Create JSON Object for ReferenceBound */
  core.Map toJson() {
    var output = new core.Map();

    if (referenceName != null) {
      output["referenceName"] = referenceName;
    }
    if (upperBound != null) {
      output["upperBound"] = upperBound;
    }

    return output;
  }

  /** Return String representation of ReferenceBound */
  core.String toString() => JSON.encode(this.toJson());

}

class ReferenceSequence {

  /** (AS) Genome assembly identifier. */
  core.String assemblyId;

  /** (LN) Reference sequence length. */
  core.int length;

  /** (M5) MD5 checksum of the sequence in the uppercase, excluding spaces but including pads as *. */
  core.String md5Checksum;

  /** (SN) Reference sequence name. */
  core.String name;

  /** (SP) Species. */
  core.String species;

  /** (UR) URI of the sequence. */
  core.String uri;

  /** Create new ReferenceSequence from JSON data */
  ReferenceSequence.fromJson(core.Map json) {
    if (json.containsKey("assemblyId")) {
      assemblyId = json["assemblyId"];
    }
    if (json.containsKey("length")) {
      length = json["length"];
    }
    if (json.containsKey("md5Checksum")) {
      md5Checksum = json["md5Checksum"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("species")) {
      species = json["species"];
    }
    if (json.containsKey("uri")) {
      uri = json["uri"];
    }
  }

  /** Create JSON Object for ReferenceSequence */
  core.Map toJson() {
    var output = new core.Map();

    if (assemblyId != null) {
      output["assemblyId"] = assemblyId;
    }
    if (length != null) {
      output["length"] = length;
    }
    if (md5Checksum != null) {
      output["md5Checksum"] = md5Checksum;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (species != null) {
      output["species"] = species;
    }
    if (uri != null) {
      output["uri"] = uri;
    }

    return output;
  }

  /** Return String representation of ReferenceSequence */
  core.String toString() => JSON.encode(this.toJson());

}

/** The call set search request. */
class SearchCallSetsRequest {

  /**  */
  core.String maxResults;

  /** Only return call sets for which a substring of the name matches this string. */
  core.String name;

  /** The maximum number of call sets to return. */
  core.int pageSize;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Restrict the query to call sets within the given variant sets. At least one ID must be provided. */
  core.List<core.String> variantSetIds;

  /**  */
  core.List<core.String> variantsetIds;

  /** Create new SearchCallSetsRequest from JSON data */
  SearchCallSetsRequest.fromJson(core.Map json) {
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pageSize")) {
      pageSize = json["pageSize"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("variantSetIds")) {
      variantSetIds = json["variantSetIds"].toList();
    }
    if (json.containsKey("variantsetIds")) {
      variantsetIds = json["variantsetIds"].toList();
    }
  }

  /** Create JSON Object for SearchCallSetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pageSize != null) {
      output["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (variantSetIds != null) {
      output["variantSetIds"] = variantSetIds.toList();
    }
    if (variantsetIds != null) {
      output["variantsetIds"] = variantsetIds.toList();
    }

    return output;
  }

  /** Return String representation of SearchCallSetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The call set search response. */
class SearchCallSetsResponse {

  /** The list of matching call sets. */
  core.List<CallSet> callSets;

  /**  */
  core.List<CallSet> callsets;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** Create new SearchCallSetsResponse from JSON data */
  SearchCallSetsResponse.fromJson(core.Map json) {
    if (json.containsKey("callSets")) {
      callSets = json["callSets"].map((callSetsItem) => new CallSet.fromJson(callSetsItem)).toList();
    }
    if (json.containsKey("callsets")) {
      callsets = json["callsets"].map((callsetsItem) => new CallSet.fromJson(callsetsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SearchCallSetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (callSets != null) {
      output["callSets"] = callSets.map((callSetsItem) => callSetsItem.toJson()).toList();
    }
    if (callsets != null) {
      output["callsets"] = callsets.map((callsetsItem) => callsetsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SearchCallSetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The jobs search request. */
class SearchJobsRequest {

  /** If specified, only jobs created on or after this date, given in milliseconds since Unix epoch, will be returned. */
  core.int createdAfter;

  /** If specified, only jobs created prior to this date, given in milliseconds since Unix epoch, will be returned. */
  core.int createdBefore;

  /** Specifies the number of results to return in a single page. Defaults to 128. The maximum value is 256. */
  core.String maxResults;

  /** The continuation token which is used to page through large result sets. To get the next page of results, set this parameter to the value of the "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Required. Only return jobs which belong to this Google Developers Console project. Only accepts project numbers. */
  core.int projectId;

  /** Only return jobs which have a matching status. */
  core.List<core.String> status;

  /** Create new SearchJobsRequest from JSON data */
  SearchJobsRequest.fromJson(core.Map json) {
    if (json.containsKey("createdAfter")) {
      createdAfter = (json["createdAfter"] is core.String) ? core.int.parse(json["createdAfter"]) : json["createdAfter"];
    }
    if (json.containsKey("createdBefore")) {
      createdBefore = (json["createdBefore"] is core.String) ? core.int.parse(json["createdBefore"]) : json["createdBefore"];
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
    if (json.containsKey("status")) {
      status = json["status"].toList();
    }
  }

  /** Create JSON Object for SearchJobsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (createdAfter != null) {
      output["createdAfter"] = createdAfter;
    }
    if (createdBefore != null) {
      output["createdBefore"] = createdBefore;
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (status != null) {
      output["status"] = status.toList();
    }

    return output;
  }

  /** Return String representation of SearchJobsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The job search response. */
class SearchJobsResponse {

  /** The list of jobs results, ordered newest to oldest. */
  core.List<Job> jobs;

  /** The continuation token which is used to page through large result sets. Provide this value is a subsequent request to return the next page of results. This field will be empty if there are no more results. */
  core.String nextPageToken;

  /** Create new SearchJobsResponse from JSON data */
  SearchJobsResponse.fromJson(core.Map json) {
    if (json.containsKey("jobs")) {
      jobs = json["jobs"].map((jobsItem) => new Job.fromJson(jobsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SearchJobsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (jobs != null) {
      output["jobs"] = jobs.map((jobsItem) => jobsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SearchJobsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The read search request. */
class SearchReadsRequest {

  /** Specifies number of results to return in a single page. If unspecified, it will default to 256. The maximum value is 2048. */
  core.String maxResults;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** The readsets within which to search for reads. At least one readset ID must be provided. All specified readsets must be aligned against a common set of reference sequences; this defines the genomic coordinates for the query. */
  core.List<core.String> readsetIds;

  /** The end position (1-based, inclusive) of the target range. If specified, "sequenceName" must also be specified. Defaults to the end of the target reference sequence, if any. */
  core.String sequenceEnd;

  /** Restricts the results to a particular reference sequence such as '1', 'chr1', or 'X'. The set of valid references sequences depends on the readsets specified. If set to "*", only unmapped Reads are returned. */
  core.String sequenceName;

  /** The start position (1-based, inclusive) of the target range. If specified, "sequenceName" must also be specified. Defaults to the start of the target reference sequence, if any. */
  core.String sequenceStart;

  /** Create new SearchReadsRequest from JSON data */
  SearchReadsRequest.fromJson(core.Map json) {
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("readsetIds")) {
      readsetIds = json["readsetIds"].toList();
    }
    if (json.containsKey("sequenceEnd")) {
      sequenceEnd = json["sequenceEnd"];
    }
    if (json.containsKey("sequenceName")) {
      sequenceName = json["sequenceName"];
    }
    if (json.containsKey("sequenceStart")) {
      sequenceStart = json["sequenceStart"];
    }
  }

  /** Create JSON Object for SearchReadsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (readsetIds != null) {
      output["readsetIds"] = readsetIds.toList();
    }
    if (sequenceEnd != null) {
      output["sequenceEnd"] = sequenceEnd;
    }
    if (sequenceName != null) {
      output["sequenceName"] = sequenceName;
    }
    if (sequenceStart != null) {
      output["sequenceStart"] = sequenceStart;
    }

    return output;
  }

  /** Return String representation of SearchReadsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The read search response. */
class SearchReadsResponse {

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** The list of matching Reads. The resulting Reads are sorted by position; the smallest positions are returned first. Unmapped reads, which have no position, are returned last and are further sorted alphabetically by name. */
  core.List<Read> reads;

  /** Create new SearchReadsResponse from JSON data */
  SearchReadsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("reads")) {
      reads = json["reads"].map((readsItem) => new Read.fromJson(readsItem)).toList();
    }
  }

  /** Create JSON Object for SearchReadsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (reads != null) {
      output["reads"] = reads.map((readsItem) => readsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SearchReadsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset search request. */
class SearchReadsetsRequest {

  /** Restricts this query to readsets within the given datasets. At least one ID must be provided. */
  core.List<core.String> datasetIds;

  /** Specifies number of results to return in a single page. If unspecified, it will default to 128. The maximum value is 1024. */
  core.String maxResults;

  /** Only return readsets for which a substring of the name matches this string. */
  core.String name;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Create new SearchReadsetsRequest from JSON data */
  SearchReadsetsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetIds")) {
      datasetIds = json["datasetIds"].toList();
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
  }

  /** Create JSON Object for SearchReadsetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetIds != null) {
      output["datasetIds"] = datasetIds.toList();
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }

    return output;
  }

  /** Return String representation of SearchReadsetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset search response. */
class SearchReadsetsResponse {

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** The list of matching Readsets. */
  core.List<Readset> readsets;

  /** Create new SearchReadsetsResponse from JSON data */
  SearchReadsetsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("readsets")) {
      readsets = json["readsets"].map((readsetsItem) => new Readset.fromJson(readsetsItem)).toList();
    }
  }

  /** Create JSON Object for SearchReadsetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (readsets != null) {
      output["readsets"] = readsets.map((readsetsItem) => readsetsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SearchReadsetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The search variant sets request. */
class SearchVariantSetsRequest {

  /**  */
  core.String datasetId;

  /** Exactly one dataset ID must be provided here. Only variant sets which belong to this dataset will be returned. */
  core.List<core.String> datasetIds;

  /** The maximum number of variant sets to return in a request. */
  core.int pageSize;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Create new SearchVariantSetsRequest from JSON data */
  SearchVariantSetsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("datasetIds")) {
      datasetIds = json["datasetIds"].toList();
    }
    if (json.containsKey("pageSize")) {
      pageSize = json["pageSize"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
  }

  /** Create JSON Object for SearchVariantSetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (datasetIds != null) {
      output["datasetIds"] = datasetIds.toList();
    }
    if (pageSize != null) {
      output["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }

    return output;
  }

  /** Return String representation of SearchVariantSetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The search variant sets response. */
class SearchVariantSetsResponse {

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** The variant sets belonging to the requested dataset. */
  core.List<VariantSet> variantSets;

  /** Create new SearchVariantSetsResponse from JSON data */
  SearchVariantSetsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("variantSets")) {
      variantSets = json["variantSets"].map((variantSetsItem) => new VariantSet.fromJson(variantSetsItem)).toList();
    }
  }

  /** Create JSON Object for SearchVariantSetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (variantSets != null) {
      output["variantSets"] = variantSets.map((variantSetsItem) => variantSetsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SearchVariantSetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant search request. */
class SearchVariantsRequest {

  /** Only return variant calls which belong to call sets with these ids. Leaving this blank returns all variant calls. */
  core.List<core.String> callSetIds;

  /**  */
  core.List<core.String> callsetIds;

  /** Only return variant calls which belong to call sets which have exactly these names. Leaving this blank returns all variant calls. At most one of callSetNames or callSetIds should be provided. */
  core.List<core.String> callsetNames;

  /**  */
  core.String contig;

  /** Required. The end of the window (0-based, exclusive) for which overlapping variants should be returned. */
  core.int end;

  /**  */
  core.int endPosition;

  /** The maximum number of calls to return. However, at least one variant will always be returned, even if it has more calls than this limit. */
  core.int maxCalls;

  /**  */
  core.String maxResults;

  /** The maximum number of variants to return. */
  core.int pageSize;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Required. Only return variants on this contig. */
  core.String referenceName;

  /** Required. The beginning of the window (0-based, inclusive) for which overlapping variants should be returned. */
  core.int start;

  /**  */
  core.int startPosition;

  /** Only return variants which have exactly this name. */
  core.String variantName;

  /** Exactly one variant set ID must be provided. Only variants from this variant set will be returned. */
  core.List<core.String> variantSetIds;

  /**  */
  core.String variantsetId;

  /** Create new SearchVariantsRequest from JSON data */
  SearchVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("callSetIds")) {
      callSetIds = json["callSetIds"].toList();
    }
    if (json.containsKey("callsetIds")) {
      callsetIds = json["callsetIds"].toList();
    }
    if (json.containsKey("callsetNames")) {
      callsetNames = json["callsetNames"].toList();
    }
    if (json.containsKey("contig")) {
      contig = json["contig"];
    }
    if (json.containsKey("end")) {
      end = (json["end"] is core.String) ? core.int.parse(json["end"]) : json["end"];
    }
    if (json.containsKey("endPosition")) {
      endPosition = (json["endPosition"] is core.String) ? core.int.parse(json["endPosition"]) : json["endPosition"];
    }
    if (json.containsKey("maxCalls")) {
      maxCalls = json["maxCalls"];
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("pageSize")) {
      pageSize = json["pageSize"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("referenceName")) {
      referenceName = json["referenceName"];
    }
    if (json.containsKey("start")) {
      start = (json["start"] is core.String) ? core.int.parse(json["start"]) : json["start"];
    }
    if (json.containsKey("startPosition")) {
      startPosition = (json["startPosition"] is core.String) ? core.int.parse(json["startPosition"]) : json["startPosition"];
    }
    if (json.containsKey("variantName")) {
      variantName = json["variantName"];
    }
    if (json.containsKey("variantSetIds")) {
      variantSetIds = json["variantSetIds"].toList();
    }
    if (json.containsKey("variantsetId")) {
      variantsetId = json["variantsetId"];
    }
  }

  /** Create JSON Object for SearchVariantsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (callSetIds != null) {
      output["callSetIds"] = callSetIds.toList();
    }
    if (callsetIds != null) {
      output["callsetIds"] = callsetIds.toList();
    }
    if (callsetNames != null) {
      output["callsetNames"] = callsetNames.toList();
    }
    if (contig != null) {
      output["contig"] = contig;
    }
    if (end != null) {
      output["end"] = end;
    }
    if (endPosition != null) {
      output["endPosition"] = endPosition;
    }
    if (maxCalls != null) {
      output["maxCalls"] = maxCalls;
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (pageSize != null) {
      output["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (referenceName != null) {
      output["referenceName"] = referenceName;
    }
    if (start != null) {
      output["start"] = start;
    }
    if (startPosition != null) {
      output["startPosition"] = startPosition;
    }
    if (variantName != null) {
      output["variantName"] = variantName;
    }
    if (variantSetIds != null) {
      output["variantSetIds"] = variantSetIds.toList();
    }
    if (variantsetId != null) {
      output["variantsetId"] = variantsetId;
    }

    return output;
  }

  /** Return String representation of SearchVariantsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant search response. */
class SearchVariantsResponse {

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** The list of matching Variants. */
  core.List<Variant> variants;

  /** Create new SearchVariantsResponse from JSON data */
  SearchVariantsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("variants")) {
      variants = json["variants"].map((variantsItem) => new Variant.fromJson(variantsItem)).toList();
    }
  }

  /** Create JSON Object for SearchVariantsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (variants != null) {
      output["variants"] = variants.map((variantsItem) => variantsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SearchVariantsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Variant represents a change in DNA sequence relative to some reference. For example, a Variant could represent a SNP or an insertion. Variants belong to a variant set. */
class Variant {

  /** The bases that appear instead of the reference bases. */
  core.List<core.String> alternateBases;

  /** The variant calls for this particular variant. Each one represents the determination of genotype with respect to this variant. */
  core.List<Call> calls;

  /**  */
  core.String contig;

  /** The date this variant was created, in milliseconds from the epoch. */
  core.int created;

  /** The end position (0-based) of this variant. This corresponds to the first base after the last base in the reference allele. So, the length of the reference allele is (end - start). This is useful for variants that don't explicitly give alternate bases, for example large deletions. */
  core.int end;

  /** The Google generated ID of the variant, immutable. */
  core.String id;

  /** A map of additional variant information. */
  core.Map<core.String, core.List<core.String>> info;

  /** Names for the variant, for example a RefSNP ID. */
  core.List<core.String> names;

  /**  */
  core.int position;

  /** The reference bases for this variant. They start at the given position. */
  core.String referenceBases;

  /** The reference on which this variant occurs. (such as 'chr20' or 'X') */
  core.String referenceName;

  /** The position at which this variant occurs (0-based). This corresponds to the first base of the string of reference bases. */
  core.int start;

  /** The ID of the variant set this variant belongs to. */
  core.String variantSetId;

  /**  */
  core.String variantsetId;

  /** Create new Variant from JSON data */
  Variant.fromJson(core.Map json) {
    if (json.containsKey("alternateBases")) {
      alternateBases = json["alternateBases"].toList();
    }
    if (json.containsKey("calls")) {
      calls = json["calls"].map((callsItem) => new Call.fromJson(callsItem)).toList();
    }
    if (json.containsKey("contig")) {
      contig = json["contig"];
    }
    if (json.containsKey("created")) {
      created = (json["created"] is core.String) ? core.int.parse(json["created"]) : json["created"];
    }
    if (json.containsKey("end")) {
      end = (json["end"] is core.String) ? core.int.parse(json["end"]) : json["end"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("info")) {
      info = _mapMap(json["info"], (infoItem) => infoItem.toList());
    }
    if (json.containsKey("names")) {
      names = json["names"].toList();
    }
    if (json.containsKey("position")) {
      position = (json["position"] is core.String) ? core.int.parse(json["position"]) : json["position"];
    }
    if (json.containsKey("referenceBases")) {
      referenceBases = json["referenceBases"];
    }
    if (json.containsKey("referenceName")) {
      referenceName = json["referenceName"];
    }
    if (json.containsKey("start")) {
      start = (json["start"] is core.String) ? core.int.parse(json["start"]) : json["start"];
    }
    if (json.containsKey("variantSetId")) {
      variantSetId = json["variantSetId"];
    }
    if (json.containsKey("variantsetId")) {
      variantsetId = json["variantsetId"];
    }
  }

  /** Create JSON Object for Variant */
  core.Map toJson() {
    var output = new core.Map();

    if (alternateBases != null) {
      output["alternateBases"] = alternateBases.toList();
    }
    if (calls != null) {
      output["calls"] = calls.map((callsItem) => callsItem.toJson()).toList();
    }
    if (contig != null) {
      output["contig"] = contig;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (end != null) {
      output["end"] = end;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (info != null) {
      output["info"] = _mapMap(info, (infoItem) => infoItem.toList());
    }
    if (names != null) {
      output["names"] = names.toList();
    }
    if (position != null) {
      output["position"] = position;
    }
    if (referenceBases != null) {
      output["referenceBases"] = referenceBases;
    }
    if (referenceName != null) {
      output["referenceName"] = referenceName;
    }
    if (start != null) {
      output["start"] = start;
    }
    if (variantSetId != null) {
      output["variantSetId"] = variantSetId;
    }
    if (variantsetId != null) {
      output["variantsetId"] = variantsetId;
    }

    return output;
  }

  /** Return String representation of Variant */
  core.String toString() => JSON.encode(this.toJson());

}

/** A VariantSet represents a collection of Variants and their summary statistics. */
class VariantSet {

  /**  */
  core.List<ContigBound> contigBounds;

  /** The dataset to which this variant set belongs. Immutable. */
  core.String datasetId;

  /** The Google-generated ID of the variant set. Immutable. */
  core.String id;

  /** The metadata associated with this variant set. */
  core.List<Metadata> metadata;

  /** A list of all references used by the variants in a variant set with associated coordinate upper bounds for each one. */
  core.List<ReferenceBound> referenceBounds;

  /** Create new VariantSet from JSON data */
  VariantSet.fromJson(core.Map json) {
    if (json.containsKey("contigBounds")) {
      contigBounds = json["contigBounds"].map((contigBoundsItem) => new ContigBound.fromJson(contigBoundsItem)).toList();
    }
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("metadata")) {
      metadata = json["metadata"].map((metadataItem) => new Metadata.fromJson(metadataItem)).toList();
    }
    if (json.containsKey("referenceBounds")) {
      referenceBounds = json["referenceBounds"].map((referenceBoundsItem) => new ReferenceBound.fromJson(referenceBoundsItem)).toList();
    }
  }

  /** Create JSON Object for VariantSet */
  core.Map toJson() {
    var output = new core.Map();

    if (contigBounds != null) {
      output["contigBounds"] = contigBounds.map((contigBoundsItem) => contigBoundsItem.toJson()).toList();
    }
    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (metadata != null) {
      output["metadata"] = metadata.map((metadataItem) => metadataItem.toJson()).toList();
    }
    if (referenceBounds != null) {
      output["referenceBounds"] = referenceBounds.map((referenceBoundsItem) => referenceBoundsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of VariantSet */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
