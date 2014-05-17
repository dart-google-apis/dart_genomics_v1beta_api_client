part of genomics_v1beta_api;

class BeaconsResource_ {

  final Client _client;

  BeaconsResource_(Client client) :
      _client = client;

  /**
   * This is an experimental API that provides a Global Alliance for Genomics and Health Beacon. It may change at any time.
   *
   * [datasetId] - The ID of the dataset to query over. It must be public. Private datasets will return an unauthorized exception.
   *
   * [allele] - Required. The allele to look for ('A', 'C', 'G' or 'T').
   *
   * [contig] - Required. The contig to query over.
   *
   * [position] - Required. The 1-based position to query at.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Beacon> get(core.String datasetId, {core.String allele, core.String contig, core.int position, core.Map optParams}) {
    var url = "beacons/{datasetId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (allele != null) queryParams["allele"] = allele;
    if (contig != null) queryParams["contig"] = contig;
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (position != null) queryParams["position"] = position;
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
   * Creates a new callset.
   *
   * [request] - Callset to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Callset> create(Callset request, {core.Map optParams}) {
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
      .then((data) => new Callset.fromJson(data));
  }

  /**
   * Deletes a callset.
   *
   * [callsetId] - The ID of the callset to be deleted.
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
   * Gets a callset by ID.
   *
   * [callsetId] - The ID of the callset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Callset> get(core.String callsetId, {core.Map optParams}) {
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
      .then((data) => new Callset.fromJson(data));
  }

  /**
   * Updates a callset. This method supports patch semantics.
   *
   * [request] - Callset to send in this request
   *
   * [callsetId] - The ID of the callset to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Callset> patch(Callset request, core.String callsetId, {core.Map optParams}) {
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
      .then((data) => new Callset.fromJson(data));
  }

  /**
   * Gets a list of callsets matching the criteria.
   *
   * [request] - SearchCallsetsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchCallsetsResponse> search(SearchCallsetsRequest request, {core.Map optParams}) {
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
      .then((data) => new SearchCallsetsResponse.fromJson(data));
  }

  /**
   * Updates a callset.
   *
   * [request] - Callset to send in this request
   *
   * [callsetId] - The ID of the callset to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Callset> update(Callset request, core.String callsetId, {core.Map optParams}) {
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
      .then((data) => new Callset.fromJson(data));
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
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [projectId] - Only return datasets which belong to this Google Developers Console project.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListDatasetsResponse> list({core.String pageToken, core.int projectId, core.Map optParams}) {
    var url = "datasets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
   * Creates and asynchronously runs an ad-hoc job. NOTE: This is an experimental call and may vanish or change without warning.
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

  final JobsDeprecatedResource_ deprecated;

  JobsResource_(Client client) :
      _client = client,
      deprecated = new JobsDeprecatedResource_(client);

  /**
   * Gets a job by ID.
   *
   * [jobId] - The ID of the job.
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
}

class JobsDeprecatedResource_ {

  final Client _client;

  JobsDeprecatedResource_(Client client) :
      _client = client;

  /**
   * TODO(garrick): Remove in follow-up CL. Gets a job by ID.
   *
   * [jobId] - The ID of the job.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Job> get(core.String jobId, {core.Map optParams}) {
    var url = "jobs/deprecated/{jobId}";
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
}

class ReadsResource_ {

  final Client _client;

  ReadsResource_(Client client) :
      _client = client;

  /**
   * Gets a read by ID.
   *
   * [readId] - The ID of the read.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Read> get(core.String readId, {core.Map optParams}) {
    var url = "reads/{readId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (readId == null) paramErrors.add("readId is required");
    if (readId != null) urlParams["readId"] = readId;
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
      .then((data) => new Read.fromJson(data));
  }

  /**
   * Gets a list of reads matching the criteria.
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

  ReadsetsResource_(Client client) :
      _client = client;

  /**
   * Creates a new readset.
   *
   * [request] - Readset to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Readset> create(Readset request, {core.Map optParams}) {
    var url = "readsets";
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
      .then((data) => new Readset.fromJson(data));
  }

  /**
   * Deletes a readset.
   *
   * [readsetId] - The ID of the readset to be deleted.
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
   * Exports readsets to a file.
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
   * Creates readsets by asynchronously importing the provided information.
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
   * [readsetId] - The ID of the readset to be updated.
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
   * [readsetId] - The ID of the readset to be updated.
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
   * Updates a variant. This method supports patch semantics.
   *
   * [request] - Variant to send in this request
   *
   * [variantId] - The ID of the variant to be updated..
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Variant> patch(Variant request, core.String variantId, {core.Map optParams}) {
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
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Variant.fromJson(data));
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
   * Updates a variant.
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

