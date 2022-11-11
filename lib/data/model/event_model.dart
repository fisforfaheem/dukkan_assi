class EventModel {
  EventModel({
    required this.type,
    required this.id,
    required this.datetimeUtc,
    required this.venue,
    required this.datetimeTbd,
    required this.performers,
    required this.isOpen,
    required this.links,
    required this.datetimeLocal,
    required this.timeTbd,
    required this.shortTitle,
    required this.visibleUntilUtc,
    required this.stats,
    required this.taxonomies,
    required this.url,
    required this.score,
    required this.announceDate,
    required this.createdAt,
    required this.dateTbd,
    required this.title,
    required this.popularity,
    required this.description,
    required this.status,
    required this.accessMethod,
    required this.eventPromotion,
    required this.announcements,
    required this.conditional,
    required this.enddatetimeUtc,
    required this.themes,
    required this.domainInformation,
  });
  late final String type;
  late final int id;
  late final String datetimeUtc;
  late final Venue venue;
  late final bool datetimeTbd;
  late final List<Performers> performers;
  late final bool isOpen;
  late final List<dynamic> links;
  late final String datetimeLocal;
  late final bool timeTbd;
  late final String shortTitle;
  late final String visibleUntilUtc;
  late final Stats stats;
  late final List<Taxonomies> taxonomies;
  late final String url;
  late final double score;
  late final String announceDate;
  late final String createdAt;
  late final bool dateTbd;
  late final String title;
  late final double popularity;
  late final String description;
  late final String status;
  late final String accessMethod;
  late final String eventPromotion;
  late final Announcements announcements;
  late final bool conditional;
  late final String enddatetimeUtc;
  late final List<dynamic> themes;
  late final List<dynamic> domainInformation;

  EventModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    datetimeUtc = json['datetime_utc'];
    venue = Venue.fromJson(json['venue']);
    datetimeTbd = json['datetime_tbd'];
    performers = List.from(json['performers'])
        .map((e) => Performers.fromJson(e))
        .toList();
    isOpen = json['is_open'];
    links = List.castFrom<dynamic, dynamic>(json['links']);
    datetimeLocal = json['datetime_local'];
    timeTbd = json['time_tbd'];
    shortTitle = json['short_title'];
    visibleUntilUtc = json['visible_until_utc'];
    stats = Stats.fromJson(json['stats']);
    taxonomies = List.from(json['taxonomies'])
        .map((e) => Taxonomies.fromJson(e))
        .toList();
    url = json['url'];
    score = (json['score'] ?? 0.0).toDouble();
    announceDate = json['announce_date'];
    createdAt = json['created_at'];
    dateTbd = json['date_tbd'];
    title = json['title'];
    popularity = (json['popularity'] ?? 0.0).toDouble();
    description = json['description'];
    status = json['status'];
    accessMethod = '';
    eventPromotion = '';
    announcements = Announcements.fromJson(json['announcements']);
    conditional = json['conditional'];
    enddatetimeUtc = '';
    themes = List.castFrom<dynamic, dynamic>(json['themes']);
    domainInformation =
        List.castFrom<dynamic, dynamic>(json['domain_information']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['datetime_utc'] = datetimeUtc;
    data['venue'] = venue.toJson();
    data['datetime_tbd'] = datetimeTbd;
    data['performers'] = performers.map((e) => e.toJson()).toList();
    data['is_open'] = isOpen;
    data['links'] = links;
    data['datetime_local'] = datetimeLocal;
    data['time_tbd'] = timeTbd;
    data['short_title'] = shortTitle;
    data['visible_until_utc'] = visibleUntilUtc;
    data['stats'] = stats.toJson();
    data['taxonomies'] = taxonomies.map((e) => e.toJson()).toList();
    data['url'] = url;
    data['score'] = score;
    data['announce_date'] = announceDate;
    data['created_at'] = createdAt;
    data['date_tbd'] = dateTbd;
    data['title'] = title;
    data['popularity'] = popularity;
    data['description'] = description;
    data['status'] = status;
    data['access_method'] = accessMethod;
    data['event_promotion'] = eventPromotion;
    data['announcements'] = announcements.toJson();
    data['conditional'] = conditional;
    data['enddatetime_utc'] = enddatetimeUtc;
    data['themes'] = themes;
    data['domain_information'] = domainInformation;
    return data;
  }
}

class Venue {
  Venue({
    required this.state,
    required this.nameV2,
    required this.postalCode,
    required this.name,
    required this.links,
    required this.timezone,
    required this.url,
    required this.score,
    required this.location,
    required this.address,
    required this.country,
    required this.hasUpcomingEvents,
    required this.numUpcomingEvents,
    required this.city,
    required this.slug,
    required this.extendedAddress,
    required this.id,
    required this.popularity,
    required this.accessMethod,
    required this.metroCode,
    required this.capacity,
    required this.displayLocation,
  });
  late final String state;
  late final String nameV2;
  late final String postalCode;
  late final String name;
  late final List<dynamic> links;
  late final String timezone;
  late final String url;
  late final double score;
  late final Location location;
  late final String address;
  late final String country;
  late final bool hasUpcomingEvents;
  late final int numUpcomingEvents;
  late final String city;
  late final String slug;
  late final String extendedAddress;
  late final int id;
  late final int popularity;
  late final String accessMethod;
  late final int metroCode;
  late final int capacity;
  late final String displayLocation;

  Venue.fromJson(Map<String, dynamic> json) {
    state = json['state'] ?? '';
    nameV2 = json['name_v2'];
    postalCode = json['postal_code'];
    name = json['name'];
    links = List.castFrom<dynamic, dynamic>(json['links']);
    timezone = json['timezone'];
    url = json['url'];
    score = (json['score'] ?? 0).toDouble();
    location = Location.fromJson(json['location']);
    address = json['address'];
    country = json['country'];
    hasUpcomingEvents = json['has_upcoming_events'];
    numUpcomingEvents = json['num_upcoming_events'];
    city = json['city'];
    slug = json['slug'];
    extendedAddress = json['extended_address'];
    id = json['id'];
    popularity = json['popularity'];
    accessMethod = '';
    metroCode = json['metro_code'];
    capacity = json['capacity'];
    displayLocation = json['display_location'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['state'] = state;
    data['name_v2'] = nameV2;
    data['postal_code'] = postalCode;
    data['name'] = name;
    data['links'] = links;
    data['timezone'] = timezone;
    data['url'] = url;
    data['score'] = score;
    data['location'] = location.toJson();
    data['address'] = address;
    data['country'] = country;
    data['has_upcoming_events'] = hasUpcomingEvents;
    data['num_upcoming_events'] = numUpcomingEvents;
    data['city'] = city;
    data['slug'] = slug;
    data['extended_address'] = extendedAddress;
    data['id'] = id;
    data['popularity'] = popularity;
    data['access_method'] = accessMethod;
    data['metro_code'] = metroCode;
    data['capacity'] = capacity;
    data['display_location'] = displayLocation;
    return data;
  }
}

class Location {
  Location({
    required this.lat,
    required this.lon,
  });
  late final double lat;
  late final double lon;

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }
}

class Performers {
  Performers({
    required this.type,
    required this.name,
    required this.image,
    required this.id,
    required this.images,
    required this.divisions,
    required this.hasUpcomingEvents,
    required this.primary,
    required this.stats,
    required this.taxonomies,
    required this.imageAttribution,
    required this.url,
    required this.score,
    required this.slug,
    required this.homeVenueId,
    required this.shortName,
    required this.numUpcomingEvents,
    required this.colors,
    required this.imageLicense,
    required this.popularity,
    required this.location,
    required this.imageRightsMessage,
  });
  late final String type;
  late final String name;
  late final String image;
  late final int id;
  late final Images images;
  late final String divisions;
  late final bool hasUpcomingEvents;
  late final bool primary;
  late final Stats stats;
  late final List<Taxonomies> taxonomies;
  late final String imageAttribution;
  late final String url;
  late final double score;
  late final String slug;
  late final String homeVenueId;
  late final String shortName;
  late final int numUpcomingEvents;
  late final String colors;
  late final String imageLicense;
  late final int popularity;
  late final String location;
  late final String imageRightsMessage;

  Performers.fromJson(Map<String, dynamic> json) {
    type = json['type'] ?? '';
    name = json['name'] ?? '';
    image = json['image'] ?? '';
    id = json['id'] ?? 0;
    images = Images.fromJson(json['images']);
    divisions = '';
    hasUpcomingEvents = json['has_upcoming_events'];
    primary = json['primary'] ?? false;
    stats = Stats.fromJson(json['stats']);
    taxonomies = List.from(json['taxonomies'])
        .map((e) => Taxonomies.fromJson(e))
        .toList();
    imageAttribution = json['image_attribution'] ?? '';
    url = json['url'];
    score = (json['score'] ?? 0.0).toDouble();
    slug = json['slug'];
    homeVenueId = '';
    shortName = json['short_name'];
    numUpcomingEvents = json['num_upcoming_events'];
    colors = '';
    imageLicense = json['image_license'] ?? '';
    popularity = json['popularity'];
    location = '';
    imageRightsMessage = json['image_rights_message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['name'] = name;
    data['image'] = image;
    data['id'] = id;
    data['images'] = images.toJson();
    data['divisions'] = divisions;
    data['has_upcoming_events'] = hasUpcomingEvents;
    data['primary'] = primary;
    data['stats'] = stats.toJson();
    data['taxonomies'] = taxonomies.map((e) => e.toJson()).toList();
    data['image_attribution'] = imageAttribution;
    data['url'] = url;
    data['score'] = score;
    data['slug'] = slug;
    data['home_venue_id'] = homeVenueId;
    data['short_name'] = shortName;
    data['num_upcoming_events'] = numUpcomingEvents;
    data['colors'] = colors;
    data['image_license'] = imageLicense;
    data['popularity'] = popularity;
    data['location'] = location;
    data['image_rights_message'] = imageRightsMessage;
    return data;
  }
}

class Images {
  Images({
    required this.huge,
  });
  late final String huge;

  Images.fromJson(Map<String, dynamic> json) {
    huge = json['huge'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['huge'] = huge;
    return data;
  }
}

class Stats {
  Stats({
    required this.eventCount,
  });
  late final int eventCount;

  Stats.fromJson(Map<String, dynamic> json) {
    eventCount = json['event_count'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['event_count'] = eventCount;
    return data;
  }
}

class Taxonomies {
  Taxonomies({
    required this.id,
    required this.name,
    this.parentId,
    required this.documentSource,
    required this.rank,
  });
  late final int id;
  late final String name;
  late final int? parentId;
  late final DocumentSource documentSource;
  late final int rank;

  Taxonomies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = 0;
    documentSource = DocumentSource.fromJson(json['document_source'] ?? {});
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['parent_id'] = parentId;
    data['document_source'] = documentSource.toJson();
    data['rank'] = rank;
    return data;
  }
}

class DocumentSource {
  DocumentSource({
    required this.sourceType,
    required this.generationType,
  });
  late final String sourceType;
  late final String generationType;

  DocumentSource.fromJson(Map<String, dynamic> json) {
    sourceType = json['source_type'] ?? '';
    generationType = json['generation_type'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['source_type'] = sourceType;
    data['generation_type'] = generationType;
    return data;
  }
}

class Announcements {
  Announcements();

  Announcements.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}
