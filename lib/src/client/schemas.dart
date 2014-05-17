part of genomics_v1beta_api;

/** A beacon represents whether any variant call in a dataset has a specific allele at a particular position. */
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

/** A Call represents the determination of genotype with respect to a particular variant. It may include associated information such as quality and phasing. For example, a Call might assign a probability of 0.32 to the occurrence of a SNP named rs1234 in a callset with the name NA12345. */
class Call {

  /** The ID of the callset this variant call belongs to. */
  core.String callsetId;

  /** The name of the callset this variant call belongs to. */
  core.String callsetName;

  /** The genotype of this variant call. Each value represents either the value of the referenceBases field or a 1-based index into alternateBases. If a variant had a referenceBases field of "T" and an alternateBases value of ["A", "C"], and the genotype was [2, 1], that would mean the call represented the heterozygous value "CA" for this variant. If the genotype was instead [0, 1], the represented value would be "TA". Ordering of the genotype values is important if the phaseset field is present. */
  core.List<core.int> genotype;

  /** The genotype likelihoods for this variant call. Each array entry represents how likely a specific genotype is for this call. The value ordering is defined by the GL tag in the VCF spec. */
  core.List<core.num> genotypeLikelihood;

  /** A map of additional variant call information. */
  core.Map<core.String, core.List<core.String>> info;

  /** If this field is present, this variant call's genotype ordering implies the phase of the bases and is consistent with any other variant calls on the same contig which have the same phaseset value. */
  core.String phaseset;

  /** Create new Call from JSON data */
  Call.fromJson(core.Map json) {
    if (json.containsKey("callsetId")) {
      callsetId = json["callsetId"];
    }
    if (json.containsKey("callsetName")) {
      callsetName = json["callsetName"];
    }
    if (json.containsKey("genotype")) {
      genotype = json["genotype"].map((genotypeItem) => (genotypeItem is core.String) ? core.int.parse(genotypeItem) : genotypeItem).toList();
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

/** A Callset is a collection of Variant Calls. It belongs to a Dataset. */
class Callset {

  /** The date this callset was created in milliseconds from the epoch. */
  core.int created;

  /** The ID of the dataset this callset belongs to. */
  core.String datasetId;

  /** The Google generated ID of the callset, immutable. */
  core.String id;

  /** A map of additional callset information. */
  core.Map<core.String, core.List<core.String>> info;

  /** The callset name. */
  core.String name;

  /** Create new Callset from JSON data */
  Callset.fromJson(core.Map json) {
    if (json.containsKey("created")) {
      created = (json["created"] is core.String) ? core.int.parse(json["created"]) : json["created"];
    }
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
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
  }

  /** Create JSON Object for Callset */
  core.Map toJson() {
    var output = new core.Map();

    if (created != null) {
      output["created"] = created;
    }
    if (datasetId != null) {
      output["datasetId"] = datasetId;
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

    return output;
  }

  /** Return String representation of Callset */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Dataset is a collection of genomic data. */
class Dataset {

  /** The Google generated ID of the dataset, immutable. */
  core.String id;

  /** Flag indicating whether or not a dataset is publicly viewable. If a dataset is not public, it inherits viewing permissions from its project. */
  core.bool isPublic;

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

  /** Required. The Google Cloud Project ID with which to associate the request. */
  core.int projectId;

  /** Required. A list of Google Cloud Storage URIs of data files to operate upon. */
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

    return output;
  }

  /** Return String representation of ExportReadsetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The readset export response. */
class ExportReadsetsResponse {

  /** An export ID that can be used to get status information. */
  core.String exportId;

  /** Create new ExportReadsetsResponse from JSON data */
  ExportReadsetsResponse.fromJson(core.Map json) {
    if (json.containsKey("exportId")) {
      exportId = json["exportId"];
    }
  }

  /** Create JSON Object for ExportReadsetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (exportId != null) {
      output["exportId"] = exportId;
    }

    return output;
  }

  /** Return String representation of ExportReadsetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The variant data export request. */
class ExportVariantsRequest {

  /** If provided, only variant call information from the specified callsets will be exported. By default all variant calls are exported. */
  core.List<core.String> callsetIds;

  /** The IDs of the datasets that contain variant data which should be exported. At least one dataset ID must be provided. */
  core.List<core.String> datasetIds;

  /** The Google Cloud URI to export to. */
  core.String exportUri;

  /** The format for the exported data. */
  core.String format;

  /** The Google Cloud project number that owns this export. This is the project that will be billed. */
  core.int projectId;

  /** Create new ExportVariantsRequest from JSON data */
  ExportVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("callsetIds")) {
      callsetIds = json["callsetIds"].toList();
    }
    if (json.containsKey("datasetIds")) {
      datasetIds = json["datasetIds"].toList();
    }
    if (json.containsKey("exportUri")) {
      exportUri = json["exportUri"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("projectId")) {
      projectId = (json["projectId"] is core.String) ? core.int.parse(json["projectId"]) : json["projectId"];
    }
  }

  /** Create JSON Object for ExportVariantsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (callsetIds != null) {
      output["callsetIds"] = callsetIds.toList();
    }
    if (datasetIds != null) {
      output["datasetIds"] = datasetIds.toList();
    }
    if (exportUri != null) {
      output["exportUri"] = exportUri;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
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

  /** The file URI that this data was imported from. */
  core.String fileUri;

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

  /** Required. The ID of the dataset these readsets will belong to. */
  core.String datasetId;

  /** A list of URIs pointing at BAM or FASTQ files in Google Cloud Storage. */
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

  /** Required. The dataset to which variant data should be imported. */
  core.String datasetId;

  /** A list of URIs pointing at VCF files in Google Cloud Storage. See the VCF Specification for more details on the input format. */
  core.List<core.String> sourceUris;

  /** Create new ImportVariantsRequest from JSON data */
  ImportVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("sourceUris")) {
      sourceUris = json["sourceUris"].toList();
    }
  }

  /** Create JSON Object for ImportVariantsRequest */
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

/** TODO(garrick): Move back to jobs proto. A Job represents an ongoing process which can be monitored for status information. For history see cloud/genomics/readstore/proto/job.proto. */
class Job {

  /** A more detailed description of this job's current status. */
  core.String description;

  /** Any errors that occurred during processing. */
  core.List<core.String> errors;

  /** The job ID. */
  core.String id;

  /** If this Job represents an import, this field will contain the IDs of the objects which were successfully imported. */
  core.List<core.String> importedIds;

  /** The Google Developers Console project number that this job belongs to. */
  core.int projectId;

  /** The status of this job. */
  core.String status;

  /** Any warnings that occurred during processing. */
  core.List<core.String> warnings;

  /** Create new Job from JSON data */
  Job.fromJson(core.Map json) {
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

  /** The date this readset was created, in milliseconds from the epoch. */
  core.int created;

  /** The ID of the dataset this readset belongs to. */
  core.String datasetId;

  /** File information from the original BAM import. See the BAM format specification for additional information on each field. */
  core.List<HeaderSection> fileData;

  /** The Google generated ID of the readset, immutable. */
  core.String id;

  /** The readset name, typically this is the sample name. */
  core.String name;

  /** The number of reads in this readset. */
  core.String readCount;

  /** Create new Readset from JSON data */
  Readset.fromJson(core.Map json) {
    if (json.containsKey("created")) {
      created = (json["created"] is core.String) ? core.int.parse(json["created"]) : json["created"];
    }
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
    if (json.containsKey("readCount")) {
      readCount = json["readCount"];
    }
  }

  /** Create JSON Object for Readset */
  core.Map toJson() {
    var output = new core.Map();

    if (created != null) {
      output["created"] = created;
    }
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
    if (readCount != null) {
      output["readCount"] = readCount;
    }

    return output;
  }

  /** Return String representation of Readset */
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

/** The callset search request. */
class SearchCallsetsRequest {

  /** If specified, will restrict the query to callsets within the given datasets. */
  core.List<core.String> datasetIds;

  /** Only return callsets for which a substring of the name matches this string. */
  core.String name;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Create new SearchCallsetsRequest from JSON data */
  SearchCallsetsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetIds")) {
      datasetIds = json["datasetIds"].toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
  }

  /** Create JSON Object for SearchCallsetsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetIds != null) {
      output["datasetIds"] = datasetIds.toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }

    return output;
  }

  /** Return String representation of SearchCallsetsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The callset search response. */
class SearchCallsetsResponse {

  /** The list of matching callsets. */
  core.List<Callset> callsets;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren't any additional results. */
  core.String nextPageToken;

  /** Create new SearchCallsetsResponse from JSON data */
  SearchCallsetsResponse.fromJson(core.Map json) {
    if (json.containsKey("callsets")) {
      callsets = json["callsets"].map((callsetsItem) => new Callset.fromJson(callsetsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SearchCallsetsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (callsets != null) {
      output["callsets"] = callsets.map((callsetsItem) => callsetsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SearchCallsetsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The read search request. */
class SearchReadsRequest {

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** If specified, will restrict this query to reads within the given readsets. At least one readset ID must be provided. */
  core.List<core.String> readsetIds;

  /** The end position (1-based, inclusive) of this query. If a sequence name is specified, this defaults to the sequence's length. */
  core.String sequenceEnd;

  /** The sequence to query. (e.g. 'X' for the X chromosome) Leaving this blank returns results from all sequences, including unmapped reads. */
  core.String sequenceName;

  /** The start position (1-based, inclusive) of this query. If a sequence name is specified, this defaults to 1. */
  core.String sequenceStart;

  /** Create new SearchReadsRequest from JSON data */
  SearchReadsRequest.fromJson(core.Map json) {
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

  /** Only return readsets for which a substring of the name matches this string. */
  core.String name;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Create new SearchReadsetsRequest from JSON data */
  SearchReadsetsRequest.fromJson(core.Map json) {
    if (json.containsKey("datasetIds")) {
      datasetIds = json["datasetIds"].toList();
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

/** The variant search request. */
class SearchVariantsRequest {

  /** Only return variant calls which belong to callsets with these ids. Leaving this blank returns all variant calls. At most one of callsetNames or callsetIds should be provided. */
  core.List<core.String> callsetIds;

  /** Only return variant calls which belong to callsets which have exactly these names. Leaving this blank returns all variant calls. At most one of callsetNames or callsetIds should be provided. */
  core.List<core.String> callsetNames;

  /** Required. Only return variants on this contig. */
  core.String contig;

  /** Required. The ID of the dataset to search. */
  core.String datasetId;

  /** Required. The end of the window (1-based, inclusive) for which overlapping variants should be returned. */
  core.int endPosition;

  /** The maximum number of variants to return. */
  core.String maxResults;

  /** The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. */
  core.String pageToken;

  /** Required. The beginning of the window (1-based, inclusive) for which overlapping variants should be returned. */
  core.int startPosition;

  /** Only return variants which have exactly this name. */
  core.String variantName;

  /** Create new SearchVariantsRequest from JSON data */
  SearchVariantsRequest.fromJson(core.Map json) {
    if (json.containsKey("callsetIds")) {
      callsetIds = json["callsetIds"].toList();
    }
    if (json.containsKey("callsetNames")) {
      callsetNames = json["callsetNames"].toList();
    }
    if (json.containsKey("contig")) {
      contig = json["contig"];
    }
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("endPosition")) {
      endPosition = (json["endPosition"] is core.String) ? core.int.parse(json["endPosition"]) : json["endPosition"];
    }
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("pageToken")) {
      pageToken = json["pageToken"];
    }
    if (json.containsKey("startPosition")) {
      startPosition = (json["startPosition"] is core.String) ? core.int.parse(json["startPosition"]) : json["startPosition"];
    }
    if (json.containsKey("variantName")) {
      variantName = json["variantName"];
    }
  }

  /** Create JSON Object for SearchVariantsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (callsetIds != null) {
      output["callsetIds"] = callsetIds.toList();
    }
    if (callsetNames != null) {
      output["callsetNames"] = callsetNames.toList();
    }
    if (contig != null) {
      output["contig"] = contig;
    }
    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (endPosition != null) {
      output["endPosition"] = endPosition;
    }
    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (pageToken != null) {
      output["pageToken"] = pageToken;
    }
    if (startPosition != null) {
      output["startPosition"] = startPosition;
    }
    if (variantName != null) {
      output["variantName"] = variantName;
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

/** A Variant represents a change in DNA sequence relative to some reference. For example, a Variant could represent a SNP or an insertion. Variants belong to a Dataset. */
class Variant {

  /** The bases that appear instead of the reference bases. */
  core.List<core.String> alternateBases;

  /** The variant calls for this particular variant. Each one represents the determination of genotype with respect to this variant. */
  core.List<Call> calls;

  /** The contig on which this variant occurs. (such as 'chr20' or 'X') */
  core.String contig;

  /** The date this variant was created, in milliseconds from the epoch. */
  core.int created;

  /** The ID of the dataset this variant belongs to. */
  core.String datasetId;

  /** The Google generated ID of the variant, immutable. */
  core.String id;

  /** A map of additional variant information. */
  core.Map<core.String, core.List<core.String>> info;

  /** Names for the variant, for example a RefSNP ID. */
  core.List<core.String> names;

  /** The position at which this variant occurs (1-based). This corresponds to the first base of the string of reference bases. */
  core.int position;

  /** The reference bases for this variant. They start at the given position. */
  core.String referenceBases;

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
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
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
    if (datasetId != null) {
      output["datasetId"] = datasetId;
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

    return output;
  }

  /** Return String representation of Variant */
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
