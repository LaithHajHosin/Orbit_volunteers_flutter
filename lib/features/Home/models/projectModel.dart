/// status : "success"
/// message : "Success"
/// data : [{"id":1,"category_id":1,"team_id":1,"title":"Volunteer Platform Website","status":"in_progress","description1":"Building a comprehensive platform for volunteer management.","description2":"Features include user profiles, project listings, and messaging.","description3":"Implementation of real-time notifications and reporting tools.","description4":"Mobile-responsive design for all devices.","image1_url":null,"image2_url":null,"image3_url":null,"image4_url":null,"project_url":"https://github.com/volunteer-platform","image_album_id":2,"video_album_id":2,"view_count":502,"published_at":"2026-06-11 10:54:41","updated_at":"2026-06-19 11:12:38","category_name":"Web Development","category_slug":"web-development","team_name":"Web Development Team","team_slug":"web-dev-team","images":[{"id":3,"image_album_id":2,"image_url":"https://via.placeholder.com/800x500","alt":"Project screenshot","caption":"Project dashboard view","display_order":1,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"},{"id":4,"image_album_id":2,"image_url":"https://via.placeholder.com/800x500","alt":"Project mobile view","caption":"Mobile responsive design","display_order":2,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"}],"videos":[{"id":3,"video_album_id":2,"video_url":"https://www.youtube.com/watch?v=dQw4w9WgXcQ","title":"Project Demo","description":"Live demonstration","duration":450,"thumbnail_url":"https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg","display_order":1,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"}],"category":{"id":1,"name":"Web Development","slug":"web-development","description":"Website and web application projects","parent_id":null},"team":{"id":1,"name":"Web Development Team","slug":"web-dev-team","description":"Team focused on web development projects","members":[{"id":2,"username":"john_doe","firstname":"John","lastname":"Doe","photo_url":null,"role":"Team Lead"},{"id":4,"username":"mike_wilson","firstname":"Mike","lastname":"Wilson","photo_url":null,"role":"Senior Developer"},{"id":1,"username":"admin","firstname":"Admin","lastname":"User","photo_url":null,"role":"Technical Advisor"}]}},{"id":2,"category_id":2,"team_id":2,"title":"Mobile App for Volunteers","status":"need_volunteers","description1":"Developing a mobile app to connect volunteers with opportunities.","description2":"Push notifications for new opportunities.","description3":"In-app messaging and project tracking.","description4":"Offline support for remote areas.","image1_url":null,"image2_url":null,"image3_url":null,"image4_url":null,"project_url":"https://github.com/volunteer-app","image_album_id":null,"video_album_id":null,"view_count":253,"published_at":"2026-06-11 10:54:41","updated_at":"2026-06-20 22:06:09","category_name":"Mobile Development","category_slug":"mobile-development","team_name":"Mobile Development Team","team_slug":"mobile-dev-team","images":[],"videos":[],"category":{"id":2,"name":"Mobile Development","slug":"mobile-development","description":"Mobile app projects","parent_id":null},"team":{"id":2,"name":"Mobile Development Team","slug":"mobile-dev-team","description":"Team focused on mobile app development","members":[{"id":5,"username":"sarah_johnson","firstname":"Sarah","lastname":"Johnson","photo_url":null,"role":"Team Lead"},{"id":1,"username":"admin","firstname":"Admin","lastname":"User","photo_url":null,"role":"Backend Support"}]}},{"id":3,"category_id":3,"team_id":3,"title":"Community Garden Project","status":"need_volunteers","description1":"Creating community gardens in urban areas.","description2":"Need volunteers for planning and execution.","description3":"Educational workshops for sustainable gardening.","description4":"Community engagement and outreach programs.","image1_url":null,"image2_url":null,"image3_url":null,"image4_url":null,"project_url":null,"image_album_id":null,"video_album_id":null,"view_count":102,"published_at":"2026-06-11 10:54:41","updated_at":"2026-06-19 11:20:21","category_name":"Community Service","category_slug":"community-service","team_name":"Community Outreach","team_slug":"community-outreach","images":[],"videos":[],"category":{"id":3,"name":"Community Service","slug":"community-service","description":"Local community projects","parent_id":null},"team":{"id":3,"name":"Community Outreach","slug":"community-outreach","description":"Community engagement and outreach","members":[{"id":3,"username":"jane_smith","firstname":"Jane","lastname":"Smith","photo_url":null,"role":"Team Lead"},{"id":6,"username":"alex_chen","firstname":"Alex","lastname":"Chen","photo_url":null,"role":"Community Manager"}]}},{"id":4,"category_id":4,"team_id":null,"title":"Digital Literacy Program","status":"need_volunteers","description1":"Teaching digital skills to seniors and underserved communities.","description2":"Curriculum development and teaching materials needed.","description3":"Volunteer instructors wanted.","description4":"Online and in-person classes available.","image1_url":null,"image2_url":null,"image3_url":null,"image4_url":null,"project_url":null,"image_album_id":null,"video_album_id":null,"view_count":80,"published_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41","category_name":"Education","category_slug":"education","team_name":null,"team_slug":null,"images":[],"videos":[],"category":{"id":4,"name":"Education","slug":"education","description":"Educational and training projects","parent_id":null},"team":null},{"id":5,"category_id":5,"team_id":null,"title":"Beach Cleanup Initiative","status":"completed","description1":"Monthly beach cleanup events.","description2":"Environmental education and awareness.","description3":"Waste segregation and recycling programs.","description4":"Partnership with local environmental groups.","image1_url":null,"image2_url":null,"image3_url":null,"image4_url":null,"project_url":null,"image_album_id":null,"video_album_id":null,"view_count":150,"published_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41","category_name":"Environmental","category_slug":"environmental","team_name":null,"team_slug":null,"images":[],"videos":[],"category":{"id":5,"name":"Environmental","slug":"environmental","description":"Environmental conservation projects","parent_id":null},"team":null}]

class ProjectModel {
  ProjectModel({
      this.status, 
      this.message, 
      this.data,});

  ProjectModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  String? message;
  List<Data>? data;
ProjectModel copyWith({  String? status,
  String? message,
  List<Data>? data,
}) => ProjectModel(  status: status ?? this.status,
  message: message ?? this.message,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// category_id : 1
/// team_id : 1
/// title : "Volunteer Platform Website"
/// status : "in_progress"
/// description1 : "Building a comprehensive platform for volunteer management."
/// description2 : "Features include user profiles, project listings, and messaging."
/// description3 : "Implementation of real-time notifications and reporting tools."
/// description4 : "Mobile-responsive design for all devices."
/// image1_url : null
/// image2_url : null
/// image3_url : null
/// image4_url : null
/// project_url : "https://github.com/volunteer-platform"
/// image_album_id : 2
/// video_album_id : 2
/// view_count : 502
/// published_at : "2026-06-11 10:54:41"
/// updated_at : "2026-06-19 11:12:38"
/// category_name : "Web Development"
/// category_slug : "web-development"
/// team_name : "Web Development Team"
/// team_slug : "web-dev-team"
/// images : [{"id":3,"image_album_id":2,"image_url":"https://via.placeholder.com/800x500","alt":"Project screenshot","caption":"Project dashboard view","display_order":1,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"},{"id":4,"image_album_id":2,"image_url":"https://via.placeholder.com/800x500","alt":"Project mobile view","caption":"Mobile responsive design","display_order":2,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"}]
/// videos : [{"id":3,"video_album_id":2,"video_url":"https://www.youtube.com/watch?v=dQw4w9WgXcQ","title":"Project Demo","description":"Live demonstration","duration":450,"thumbnail_url":"https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg","display_order":1,"created_at":"2026-06-11 10:54:41","updated_at":"2026-06-11 10:54:41"}]
/// category : {"id":1,"name":"Web Development","slug":"web-development","description":"Website and web application projects","parent_id":null}
/// team : {"id":1,"name":"Web Development Team","slug":"web-dev-team","description":"Team focused on web development projects","members":[{"id":2,"username":"john_doe","firstname":"John","lastname":"Doe","photo_url":null,"role":"Team Lead"},{"id":4,"username":"mike_wilson","firstname":"Mike","lastname":"Wilson","photo_url":null,"role":"Senior Developer"},{"id":1,"username":"admin","firstname":"Admin","lastname":"User","photo_url":null,"role":"Technical Advisor"}]}

class Data {
  Data({
      this.id, 
      this.categoryId, 
      this.teamId, 
      this.title, 
      this.status, 
      this.description1, 
      this.description2, 
      this.description3, 
      this.description4, 
      this.image1Url, 
      this.image2Url, 
      this.image3Url, 
      this.image4Url, 
      this.projectUrl, 
      this.imageAlbumId, 
      this.videoAlbumId, 
      this.viewCount, 
      this.publishedAt, 
      this.updatedAt, 
      this.categoryName, 
      this.categorySlug, 
      this.teamName, 
      this.teamSlug, 
      this.images, 
      this.videos, 
      this.category, 
      this.team,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    teamId = json['team_id'];
    title = json['title'];
    status = json['status'];
    description1 = json['description1'];
    description2 = json['description2'];
    description3 = json['description3'];
    description4 = json['description4'];
    image1Url = json['image1_url'];
    image2Url = json['image2_url'];
    image3Url = json['image3_url'];
    image4Url = json['image4_url'];
    projectUrl = json['project_url'];
    imageAlbumId = json['image_album_id'];
    videoAlbumId = json['video_album_id'];
    viewCount = json['view_count'];
    publishedAt = json['published_at'];
    updatedAt = json['updated_at'];
    categoryName = json['category_name'];
    categorySlug = json['category_slug'];
    teamName = json['team_name'];
    teamSlug = json['team_slug'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      videos = [];
      json['videos'].forEach((v) {
        videos?.add(Videos.fromJson(v));
      });
    }
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
  }
  num? id;
  num? categoryId;
  num? teamId;
  String? title;
  String? status;
  String? description1;
  String? description2;
  String? description3;
  String? description4;
  dynamic image1Url;
  dynamic image2Url;
  dynamic image3Url;
  dynamic image4Url;
  String? projectUrl;
  num? imageAlbumId;
  num? videoAlbumId;
  num? viewCount;
  String? publishedAt;
  String? updatedAt;
  String? categoryName;
  String? categorySlug;
  String? teamName;
  String? teamSlug;
  List<Images>? images;
  List<Videos>? videos;
  Category? category;
  Team? team;
Data copyWith({  num? id,
  num? categoryId,
  num? teamId,
  String? title,
  String? status,
  String? description1,
  String? description2,
  String? description3,
  String? description4,
  dynamic image1Url,
  dynamic image2Url,
  dynamic image3Url,
  dynamic image4Url,
  String? projectUrl,
  num? imageAlbumId,
  num? videoAlbumId,
  num? viewCount,
  String? publishedAt,
  String? updatedAt,
  String? categoryName,
  String? categorySlug,
  String? teamName,
  String? teamSlug,
  List<Images>? images,
  List<Videos>? videos,
  Category? category,
  Team? team,
}) => Data(  id: id ?? this.id,
  categoryId: categoryId ?? this.categoryId,
  teamId: teamId ?? this.teamId,
  title: title ?? this.title,
  status: status ?? this.status,
  description1: description1 ?? this.description1,
  description2: description2 ?? this.description2,
  description3: description3 ?? this.description3,
  description4: description4 ?? this.description4,
  image1Url: image1Url ?? this.image1Url,
  image2Url: image2Url ?? this.image2Url,
  image3Url: image3Url ?? this.image3Url,
  image4Url: image4Url ?? this.image4Url,
  projectUrl: projectUrl ?? this.projectUrl,
  imageAlbumId: imageAlbumId ?? this.imageAlbumId,
  videoAlbumId: videoAlbumId ?? this.videoAlbumId,
  viewCount: viewCount ?? this.viewCount,
  publishedAt: publishedAt ?? this.publishedAt,
  updatedAt: updatedAt ?? this.updatedAt,
  categoryName: categoryName ?? this.categoryName,
  categorySlug: categorySlug ?? this.categorySlug,
  teamName: teamName ?? this.teamName,
  teamSlug: teamSlug ?? this.teamSlug,
  images: images ?? this.images,
  videos: videos ?? this.videos,
  category: category ?? this.category,
  team: team ?? this.team,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['team_id'] = teamId;
    map['title'] = title;
    map['status'] = status;
    map['description1'] = description1;
    map['description2'] = description2;
    map['description3'] = description3;
    map['description4'] = description4;
    map['image1_url'] = image1Url;
    map['image2_url'] = image2Url;
    map['image3_url'] = image3Url;
    map['image4_url'] = image4Url;
    map['project_url'] = projectUrl;
    map['image_album_id'] = imageAlbumId;
    map['video_album_id'] = videoAlbumId;
    map['view_count'] = viewCount;
    map['published_at'] = publishedAt;
    map['updated_at'] = updatedAt;
    map['category_name'] = categoryName;
    map['category_slug'] = categorySlug;
    map['team_name'] = teamName;
    map['team_slug'] = teamSlug;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (videos != null) {
      map['videos'] = videos?.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (team != null) {
      map['team'] = team?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "Web Development Team"
/// slug : "web-dev-team"
/// description : "Team focused on web development projects"
/// members : [{"id":2,"username":"john_doe","firstname":"John","lastname":"Doe","photo_url":null,"role":"Team Lead"},{"id":4,"username":"mike_wilson","firstname":"Mike","lastname":"Wilson","photo_url":null,"role":"Senior Developer"},{"id":1,"username":"admin","firstname":"Admin","lastname":"User","photo_url":null,"role":"Technical Advisor"}]

class Team {
  Team({
      this.id, 
      this.name, 
      this.slug, 
      this.description, 
      this.members,});

  Team.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    if (json['members'] != null) {
      members = [];
      json['members'].forEach((v) {
        members?.add(Members.fromJson(v));
      });
    }
  }
  num? id;
  String? name;
  String? slug;
  String? description;
  List<Members>? members;
Team copyWith({  num? id,
  String? name,
  String? slug,
  String? description,
  List<Members>? members,
}) => Team(  id: id ?? this.id,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  description: description ?? this.description,
  members: members ?? this.members,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['description'] = description;
    if (members != null) {
      map['members'] = members?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// username : "john_doe"
/// firstname : "John"
/// lastname : "Doe"
/// photo_url : null
/// role : "Team Lead"

class Members {
  Members({
      this.id, 
      this.username, 
      this.firstname, 
      this.lastname, 
      this.photoUrl, 
      this.role,});

  Members.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    photoUrl = json['photo_url'];
    role = json['role'];
  }
  num? id;
  String? username;
  String? firstname;
  String? lastname;
  dynamic photoUrl;
  String? role;
Members copyWith({  num? id,
  String? username,
  String? firstname,
  String? lastname,
  dynamic photoUrl,
  String? role,
}) => Members(  id: id ?? this.id,
  username: username ?? this.username,
  firstname: firstname ?? this.firstname,
  lastname: lastname ?? this.lastname,
  photoUrl: photoUrl ?? this.photoUrl,
  role: role ?? this.role,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['photo_url'] = photoUrl;
    map['role'] = role;
    return map;
  }

}

/// id : 1
/// name : "Web Development"
/// slug : "web-development"
/// description : "Website and web application projects"
/// parent_id : null

class Category {
  Category({
      this.id, 
      this.name, 
      this.slug, 
      this.description, 
      this.parentId,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    parentId = json['parent_id'];
  }
  num? id;
  String? name;
  String? slug;
  String? description;
  dynamic parentId;
Category copyWith({  num? id,
  String? name,
  String? slug,
  String? description,
  dynamic parentId,
}) => Category(  id: id ?? this.id,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  description: description ?? this.description,
  parentId: parentId ?? this.parentId,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['description'] = description;
    map['parent_id'] = parentId;
    return map;
  }

}

/// id : 3
/// video_album_id : 2
/// video_url : "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
/// title : "Project Demo"
/// description : "Live demonstration"
/// duration : 450
/// thumbnail_url : "https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg"
/// display_order : 1
/// created_at : "2026-06-11 10:54:41"
/// updated_at : "2026-06-11 10:54:41"

class Videos {
  Videos({
      this.id, 
      this.videoAlbumId, 
      this.videoUrl, 
      this.title, 
      this.description, 
      this.duration, 
      this.thumbnailUrl, 
      this.displayOrder, 
      this.createdAt, 
      this.updatedAt,});

  Videos.fromJson(dynamic json) {
    id = json['id'];
    videoAlbumId = json['video_album_id'];
    videoUrl = json['video_url'];
    title = json['title'];
    description = json['description'];
    duration = json['duration'];
    thumbnailUrl = json['thumbnail_url'];
    displayOrder = json['display_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  num? videoAlbumId;
  String? videoUrl;
  String? title;
  String? description;
  num? duration;
  String? thumbnailUrl;
  num? displayOrder;
  String? createdAt;
  String? updatedAt;
Videos copyWith({  num? id,
  num? videoAlbumId,
  String? videoUrl,
  String? title,
  String? description,
  num? duration,
  String? thumbnailUrl,
  num? displayOrder,
  String? createdAt,
  String? updatedAt,
}) => Videos(  id: id ?? this.id,
  videoAlbumId: videoAlbumId ?? this.videoAlbumId,
  videoUrl: videoUrl ?? this.videoUrl,
  title: title ?? this.title,
  description: description ?? this.description,
  duration: duration ?? this.duration,
  thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
  displayOrder: displayOrder ?? this.displayOrder,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['video_album_id'] = videoAlbumId;
    map['video_url'] = videoUrl;
    map['title'] = title;
    map['description'] = description;
    map['duration'] = duration;
    map['thumbnail_url'] = thumbnailUrl;
    map['display_order'] = displayOrder;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// id : 3
/// image_album_id : 2
/// image_url : "https://via.placeholder.com/800x500"
/// alt : "Project screenshot"
/// caption : "Project dashboard view"
/// display_order : 1
/// created_at : "2026-06-11 10:54:41"
/// updated_at : "2026-06-11 10:54:41"

class Images {
  Images({
      this.id, 
      this.imageAlbumId, 
      this.imageUrl, 
      this.alt, 
      this.caption, 
      this.displayOrder, 
      this.createdAt, 
      this.updatedAt,});

  Images.fromJson(dynamic json) {
    id = json['id'];
    imageAlbumId = json['image_album_id'];
    imageUrl = json['image_url'];
    alt = json['alt'];
    caption = json['caption'];
    displayOrder = json['display_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  num? imageAlbumId;
  String? imageUrl;
  String? alt;
  String? caption;
  num? displayOrder;
  String? createdAt;
  String? updatedAt;
Images copyWith({  num? id,
  num? imageAlbumId,
  String? imageUrl,
  String? alt,
  String? caption,
  num? displayOrder,
  String? createdAt,
  String? updatedAt,
}) => Images(  id: id ?? this.id,
  imageAlbumId: imageAlbumId ?? this.imageAlbumId,
  imageUrl: imageUrl ?? this.imageUrl,
  alt: alt ?? this.alt,
  caption: caption ?? this.caption,
  displayOrder: displayOrder ?? this.displayOrder,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image_album_id'] = imageAlbumId;
    map['image_url'] = imageUrl;
    map['alt'] = alt;
    map['caption'] = caption;
    map['display_order'] = displayOrder;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}