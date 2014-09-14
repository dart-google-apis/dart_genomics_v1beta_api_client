part of genomics_v1beta_api;

class BeaconsResource_ {

  final Client _client;

  BeaconsResource_(Client client) :
      _client = client;

  /**
   * This is an experimental API that provides a Global Alliance for Genomics and Health Beacon. It may change at any time.
   *
   * [variantSetId] - The ID of the variant set to query over. It must be public. Private variant sets will return an unauthorized exception.
   *
   * [allele] - Required. The allele to look for ('A', 'C', 'G' or 'T').
   *
   * [contig] - 
   *
   * [position] - Required. The 0-based position to query.
   *
   * [referenceName] - Required. The reference to query over.
   *
   * [variantsetId] - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Beacon> get(core.String variantSetId, {core.String allele, core.String contig, core.int position, core.String referenceName, core.String variantsetId, core.Map optParams}) {
    var url = "beacons/{variantSetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (allele != null) queryParams["allele"] = allele;
    if (contig != null) queryParams["contig"] = contig;
    if (position != null) queryParams["position"] = position;
    if (referenceName != null) queryParams["referenceName"] = referenceName;
    if (variantSetId == null) paramErrors.add("variantSetId is required");
    if (variantSetId != null) urlParams["variantSetId"] = variantSetId;
    if (variantsetId != null) queryParams["variantsetId"] = variantsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Beacon.fromJson(data));
  }
}

class CallsetsResource_ {

  final Client _client;

  CallsetsResource_(Client client) :
      _client = client;

  /**
   * Creates a new call set.
   *
   * [request] - CallSet to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CallSet> create(CallSet request, {core.Map optParams}) {
    var url = "callsets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CallSet.fromJson(data));
  }

  /**
   * Deletes a call set.
   *
   * [callsetId] - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String callsetId, {core.Map optParams}) {
    var url = "callsets/{callsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (callsetId == null) paramErrors.add("callsetId is required");
    if (callsetId != null) urlParams["callsetId"] = callsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a call set by ID.
   *
   * [callsetId] - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CallSet> get(core.String callsetId, {core.Map optParams}) {
    var url = "callsets/{callsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (callsetId == null) paramErrors.add("callsetId is required");
    if (callsetId != null) urlParams["callsetId"] = callsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CallSet.fromJson(data));
  }

  /**
   * Updates a call set. This method supports patch semantics.
   *
   * [request] - CallSet to send in this request
   *
   * [callsetId] - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CallSet> patch(CallSet request, core.String callsetId, {core.Map optParams}) {
    var url = "callsets/{callsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (callsetId == null) paramErrors.add("callsetId is required");
    if (callsetId != null) urlParams["callsetId"] = callsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CallSet.fromJson(data));
  }

  /**
   * Gets a list of call sets matching the criteria.
   *
   * [request] - SearchCallSetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchCallSetsResponse> search(SearchCallSetsRequest request, {core.Map optParams}) {
    var url = "callsets/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchCallSetsResponse.fromJson(data));
  }

  /**
   * Updates a call set.
   *
   * [request] - CallSet to send in this request
   *
   * [callsetId] - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CallSet> update(CallSet request, core.String callsetId, {core.Map optParams}) {
    var url = "callsets/{callsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (callsetId == null) paramErrors.add("callsetId is required");
    if (callsetId != null) urlParams["callsetId"] = callsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CallSet.fromJson(data));
  }
}

class DatasetsResource_ {

  final Client _client;

  DatasetsResource_(Client client) :
      _client = client;

  /**
   * Creates a new dataset.
   *
   * [request] - Dataset to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Dataset> create(Dataset request, {core.Map optParams}) {
    var url = "datasets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }

  /**
   * Deletes a dataset.
   *
   * [datasetId] - The ID of the dataset to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String datasetId, {core.Map optParams}) {
    var url = "datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a dataset by ID.
   *
   * [datasetId] - The ID of the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Dataset> get(core.String datasetId, {core.Map optParams}) {
    var url = "datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }

  /**
   * Lists all datasets.
   *
   * [maxResults] - The maximum number of results returned by this request.
   *   Default: 50
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [projectId] - Only return datasets which belong to this Google Developers Console project. Only accepts project numbers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListDatasetsResponse> list({core.String maxResults, core.String pageToken, core.int projectId, core.Map optParams}) {
    var url = "datasets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListDatasetsResponse.fromJson(data));
  }

  /**
   * Updates a dataset. This method supports patch semantics.
   *
   * [request] - Dataset to send in this request
   *
   * [datasetId] - The ID of the dataset to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Dataset> patch(Dataset request, core.String datasetId, {core.Map optParams}) {
    var url = "datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }

  /**
   * Undeletes a dataset by restoring a dataset which was deleted via this API. This operation is only possible for a week after the deletion occurred.
   *
   * [datasetId] - The ID of the dataset to be undeleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Dataset> undelete(core.String datasetId, {core.Map optParams}) {
    var url = "datasets/{datasetId}/undelete";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }

  /**
   * Updates a dataset.
   *
   * [request] - Dataset to send in this request
   *
   * [datasetId] - The ID of the dataset to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Dataset> update(Dataset request, core.String datasetId, {core.Map optParams}) {
    var url = "datasets/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Dataset.fromJson(data));
  }
}

class ExperimentalResource_ {

  final Client _client;

  final ExperimentalJobsResource_ jobs;

  ExperimentalResource_(Client client) :
      _client = client,
      jobs = new ExperimentalJobsResource_(client);
}

class ExperimentalJobsResource_ {

  final Client _client;

  ExperimentalJobsResource_(Client client) :
      _client = client;

  /**
   * Creates and asynchronously runs an ad-hoc job. This is an experimental call and may be removed or changed at any time.
   *
   * [request] - ExperimentalCreateJobRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExperimentalCreateJobResponse> create(ExperimentalCreateJobRequest request, {core.Map optParams}) {
    var url = "experimental/jobs/create";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExperimentalCreateJobResponse.fromJson(data));
  }
}

class JobsResource_ {

  final Client _client;

  JobsResource_(Client client) :
      _client = client;

  /**
   * Cancels a job by ID. Note that it is possible for partial results to be generated and stored for cancelled jobs.
   *
   * [jobId] - Required. The ID of the job.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> cancel(core.String jobId, {core.Map optParams}) {
    var url = "jobs/{jobId}/cancel";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a job by ID.
   *
   * [jobId] - Required. The ID of the job.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Job> get(core.String jobId, {core.Map optParams}) {
    var url = "jobs/{jobId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (jobId == null) paramErrors.add("jobId is required");
    if (jobId != null) urlParams["jobId"] = jobId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Job.fromJson(data));
  }

  /**
   * Gets a list of jobs matching the criteria.
   *
   * [request] - SearchJobsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchJobsResponse> search(SearchJobsRequest request, {core.Map optParams}) {
    var url = "jobs/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchJobsResponse.fromJson(data));
  }
}

class ReadsResource_ {

  final Client _client;

  ReadsResource_(Client client) :
      _client = client;

  /**
   * Gets a list of reads for one or more readsets. Reads search operates over a genomic coordinate space of reference sequence & position defined over the reference sequences to which the requested readsets are aligned. If a target positional range is specified, search returns all reads whose alignment to the reference genome overlap the range. A query which specifies only readset IDs yields all reads in those readsets, including unmapped reads. All reads returned (including reads on subsequent pages) are ordered by genomic coordinate (reference sequence & position). Reads with equivalent genomic coordinates are returned in a deterministic order.
   *
   * [request] - SearchReadsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchReadsResponse> search(SearchReadsRequest request, {core.Map optParams}) {
    var url = "reads/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchReadsResponse.fromJson(data));
  }
}

class ReadsetsResource_ {

  final Client _client;

  final ReadsetsCoveragebucketsResource_ coveragebuckets;

  ReadsetsResource_(Client client) :
      _client = client,
      coveragebuckets = new ReadsetsCoveragebucketsResource_(client);

  /**
   * Deletes a readset.
   *
   * [readsetId] - The ID of the readset to be deleted. The caller must have WRITE permissions to the dataset associated with this readset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String readsetId, {core.Map optParams}) {
    var url = "readsets/{readsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (readsetId == null) paramErrors.add("readsetId is required");
    if (readsetId != null) urlParams["readsetId"] = readsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Exports readsets to a BAM file in Google Cloud Storage. Note that currently there may be some differences between exported BAM files and the original BAM file at the time of import. In particular, comments in the input file header will not be preserved, and some custom tags will be converted to strings.
   *
   * [request] - ExportReadsetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExportReadsetsResponse> export(ExportReadsetsRequest request, {core.Map optParams}) {
    var url = "readsets/export";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExportReadsetsResponse.fromJson(data));
  }

  /**
   * Gets a readset by ID.
   *
   * [readsetId] - The ID of the readset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Readset> get(core.String readsetId, {core.Map optParams}) {
    var url = "readsets/{readsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (readsetId == null) paramErrors.add("readsetId is required");
    if (readsetId != null) urlParams["readsetId"] = readsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Readset.fromJson(data));
  }

  /**
   * Creates readsets by asynchronously importing the provided information. Note that currently comments in the input file header are not imported and some custom tags will be converted to strings, rather than preserving tag types. The caller must have WRITE permissions to the dataset.
   *
   * [request] - ImportReadsetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ImportReadsetsResponse> import(ImportReadsetsRequest request, {core.Map optParams}) {
    var url = "readsets/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ImportReadsetsResponse.fromJson(data));
  }

  /**
   * Updates a readset. This method supports patch semantics.
   *
   * [request] - Readset to send in this request
   *
   * [readsetId] - The ID of the readset to be updated. The caller must have WRITE permissions to the dataset associated with this readset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Readset> patch(Readset request, core.String readsetId, {core.Map optParams}) {
    var url = "readsets/{readsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (readsetId == null) paramErrors.add("readsetId is required");
    if (readsetId != null) urlParams["readsetId"] = readsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Readset.fromJson(data));
  }

  /**
   * Gets a list of readsets matching the criteria.
   *
   * [request] - SearchReadsetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchReadsetsResponse> search(SearchReadsetsRequest request, {core.Map optParams}) {
    var url = "readsets/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchReadsetsResponse.fromJson(data));
  }

  /**
   * Updates a readset.
   *
   * [request] - Readset to send in this request
   *
   * [readsetId] - The ID of the readset to be updated. The caller must have WRITE permissions to the dataset associated with this readset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Readset> update(Readset request, core.String readsetId, {core.Map optParams}) {
    var url = "readsets/{readsetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (readsetId == null) paramErrors.add("readsetId is required");
    if (readsetId != null) urlParams["readsetId"] = readsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Readset.fromJson(data));
  }
}

class ReadsetsCoveragebucketsResource_ {

  final Client _client;

  ReadsetsCoveragebucketsResource_(Client client) :
      _client = client;

  /**
   * Lists fixed width coverage buckets for a readset, each of which correspond to a range of a reference sequence. Each bucket summarizes coverage information across its corresponding genomic range. Coverage is defined as the number of reads which are aligned to a given base in the reference sequence. Coverage buckets are available at various bucket widths, enabling various coverage "zoom levels". The caller must have READ permissions for the target readset.
   *
   * [readsetId] - Required. The ID of the readset over which coverage is requested.
   *
   * [maxResults] - The maximum number of results to return in a single page. If unspecified, defaults to 1024. The maximum value is 2048.
   *   Default: 1024
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [range_sequenceEnd] - The end position of the range on the reference, 1-based exclusive. If specified, sequenceName must also be specified.
   *
   * [range_sequenceName] - The reference sequence name, for example "chr1", "1", or "chrX".
   *
   * [range_sequenceStart] - The start position of the range on the reference, 1-based inclusive. If specified, sequenceName must also be specified.
   *
   * [targetBucketWidth] - The desired width of each reported coverage bucket in base pairs. This will be rounded down to the nearest precomputed bucket width; the value of which is returned as bucket_width in the response. Defaults to infinity (each bucket spans an entire reference sequence) or the length of the target range, if specified. The smallest precomputed bucket_width is currently 2048 base pairs; this is subject to change.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListCoverageBucketsResponse> list(core.String readsetId, {core.String maxResults, core.String pageToken, core.String range_sequenceEnd, core.String range_sequenceName, core.String range_sequenceStart, core.String targetBucketWidth, core.Map optParams}) {
    var url = "readsets/{readsetId}/coveragebuckets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (range_sequenceEnd != null) queryParams["range.sequenceEnd"] = range_sequenceEnd;
    if (range_sequenceName != null) queryParams["range.sequenceName"] = range_sequenceName;
    if (range_sequenceStart != null) queryParams["range.sequenceStart"] = range_sequenceStart;
    if (readsetId == null) paramErrors.add("readsetId is required");
    if (readsetId != null) urlParams["readsetId"] = readsetId;
    if (targetBucketWidth != null) queryParams["targetBucketWidth"] = targetBucketWidth;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListCoverageBucketsResponse.fromJson(data));
  }
}

class VariantsResource_ {

  final Client _client;

  VariantsResource_(Client client) :
      _client = client;

  /**
   * Creates a new variant.
   *
   * [request] - Variant to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Variant> create(Variant request, {core.Map optParams}) {
    var url = "variants";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Variant.fromJson(data));
  }

  /**
   * Deletes a variant.
   *
   * [variantId] - The ID of the variant to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String variantId, {core.Map optParams}) {
    var url = "variants/{variantId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantId == null) paramErrors.add("variantId is required");
    if (variantId != null) urlParams["variantId"] = variantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Exports variant data to an external destination.
   *
   * [request] - ExportVariantsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExportVariantsResponse> export(ExportVariantsRequest request, {core.Map optParams}) {
    var url = "variants/export";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExportVariantsResponse.fromJson(data));
  }

  /**
   * Gets a variant by ID.
   *
   * [variantId] - The ID of the variant.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Variant> get(core.String variantId, {core.Map optParams}) {
    var url = "variants/{variantId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantId == null) paramErrors.add("variantId is required");
    if (variantId != null) urlParams["variantId"] = variantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Variant.fromJson(data));
  }

  /**
   * Gets a summary of all the variant data in a variantset.
   *
   * [variantsetId] - Required. The ID of the variant set to get variant summary information for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GetVariantsSummaryResponse> getSummary({core.String variantsetId, core.Map optParams}) {
    var url = "variants/summary";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantsetId != null) queryParams["variantsetId"] = variantsetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GetVariantsSummaryResponse.fromJson(data));
  }

  /**
   * Creates variant data by asynchronously importing the provided information.
   *
   * [request] - ImportVariantsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ImportVariantsResponse> import(ImportVariantsRequest request, {core.Map optParams}) {
    var url = "variants/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ImportVariantsResponse.fromJson(data));
  }

  /**
   * Gets a list of variants matching the criteria.
   *
   * [request] - SearchVariantsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchVariantsResponse> search(SearchVariantsRequest request, {core.Map optParams}) {
    var url = "variants/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchVariantsResponse.fromJson(data));
  }

  /**
   * Updates a variant's names and info fields. All other modifications are silently ignored. Returns the modified variant without its calls.
   *
   * [request] - Variant to send in this request
   *
   * [variantId] - The ID of the variant to be updated..
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Variant> update(Variant request, core.String variantId, {core.Map optParams}) {
    var url = "variants/{variantId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantId == null) paramErrors.add("variantId is required");
    if (variantId != null) urlParams["variantId"] = variantId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Variant.fromJson(data));
  }
}

class VariantsetsResource_ {

  final Client _client;

  VariantsetsResource_(Client client) :
      _client = client;

  /**
   * Deletes the contents of a variant set. The variant set object is not deleted.
   *
   * [variantSetId] - The ID of the variant set to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String variantSetId, {core.Map optParams}) {
    var url = "variantsets/{variantSetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantSetId == null) paramErrors.add("variantSetId is required");
    if (variantSetId != null) urlParams["variantSetId"] = variantSetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a variant set by ID.
   *
   * [variantSetId] - Required. The ID of the variant set.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VariantSet> get(core.String variantSetId, {core.Map optParams}) {
    var url = "variantsets/{variantSetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (variantSetId == null) paramErrors.add("variantSetId is required");
    if (variantSetId != null) urlParams["variantSetId"] = variantSetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VariantSet.fromJson(data));
  }

  /**
   * Returns a list of all variant sets matching search criteria.
   *
   * [request] - SearchVariantSetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchVariantSetsResponse> search(SearchVariantSetsRequest request, {core.Map optParams}) {
    var url = "variantsets/search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchVariantSetsResponse.fromJson(data));
  }
}

