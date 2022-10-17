// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let videoList = try VideoList(json)

import Foundation

// MARK: - VideoList
class VideoList: Codable {
    var total, page, perPage: Int?
    var paging: Paging?
    var data: [Datum]?

    enum CodingKeys: String, CodingKey {
        case total, page
        case perPage = "per_page"
        case paging, data
    }

    init(total: Int?, page: Int?, perPage: Int?, paging: Paging?, data: [Datum]?) {
        self.total = total
        self.page = page
        self.perPage = perPage
        self.paging = paging
        self.data = data
    }
}

// MARK: VideoList convenience initializers and mutators

extension VideoList {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(VideoList.self, from: data)
        self.init(total: me.total, page: me.page, perPage: me.perPage, paging: me.paging, data: me.data)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        total: Int?? = nil,
        page: Int?? = nil,
        perPage: Int?? = nil,
        paging: Paging?? = nil,
        data: [Datum]?? = nil
    ) -> VideoList {
        return VideoList(
            total: total ?? self.total,
            page: page ?? self.page,
            perPage: perPage ?? self.perPage,
            paging: paging ?? self.paging,
            data: data ?? self.data
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Datum
class Datum: Codable {
    var uri, name: String?
    var datumDescription: String?
    var type: DatumType?
    var link, playerEmbedURL: String?
    var duration, width: Int?
    var language: String?
    var height: Int?
    var embed: EmbedClass?
    var createdTime, modifiedTime, releaseTime: Date?
    var contentRating: [ContentRating]?
    var contentRatingClass: ContentRating?
    var ratingModLocked: Bool?
    var license: String?
    var privacy: Privacy?
    var pictures: Pictures?
    var tags: [Tag]?
    var stats: Stats?
    var categories: [Category]?
    var uploader: Uploader?
    var metadata: DatumMetadata?
    var user: User?
    var play: Play?
    var app: App?
    var status: DatumStatus?
    var resourceKey: String?
    var upload, transcode: JSONNull?
    var isPlayable, hasAudio: Bool?
    var vod: VOD?

    enum CodingKeys: String, CodingKey {
        case uri, name
        case datumDescription = "description"
        case type, link
        case playerEmbedURL = "player_embed_url"
        case duration, width, language, height, embed
        case createdTime = "created_time"
        case modifiedTime = "modified_time"
        case releaseTime = "release_time"
        case contentRating = "content_rating"
        case contentRatingClass = "content_rating_class"
        case ratingModLocked = "rating_mod_locked"
        case license, privacy, pictures, tags, stats, categories, uploader, metadata, user, play, app, status
        case resourceKey = "resource_key"
        case upload, transcode
        case isPlayable = "is_playable"
        case hasAudio = "has_audio"
        case vod
    }

    init(uri: String?, name: String?, datumDescription: String?, type: DatumType?, link: String?, playerEmbedURL: String?, duration: Int?, width: Int?, language: String?, height: Int?, embed: EmbedClass?, createdTime: Date?, modifiedTime: Date?, releaseTime: Date?, contentRating: [ContentRating]?, contentRatingClass: ContentRating?, ratingModLocked: Bool?, license: String?, privacy: Privacy?, pictures: Pictures?, tags: [Tag]?, stats: Stats?, categories: [Category]?, uploader: Uploader?, metadata: DatumMetadata?, user: User?, play: Play?, app: App?, status: DatumStatus?, resourceKey: String?, upload: JSONNull?, transcode: JSONNull?, isPlayable: Bool?, hasAudio: Bool?, vod: VOD?) {
        self.uri = uri
        self.name = name
        self.datumDescription = datumDescription
        self.type = type
        self.link = link
        self.playerEmbedURL = playerEmbedURL
        self.duration = duration
        self.width = width
        self.language = language
        self.height = height
        self.embed = embed
        self.createdTime = createdTime
        self.modifiedTime = modifiedTime
        self.releaseTime = releaseTime
        self.contentRating = contentRating
        self.contentRatingClass = contentRatingClass
        self.ratingModLocked = ratingModLocked
        self.license = license
        self.privacy = privacy
        self.pictures = pictures
        self.tags = tags
        self.stats = stats
        self.categories = categories
        self.uploader = uploader
        self.metadata = metadata
        self.user = user
        self.play = play
        self.app = app
        self.status = status
        self.resourceKey = resourceKey
        self.upload = upload
        self.transcode = transcode
        self.isPlayable = isPlayable
        self.hasAudio = hasAudio
        self.vod = vod
    }
}

// MARK: Datum convenience initializers and mutators

extension Datum {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Datum.self, from: data)
        self.init(uri: me.uri, name: me.name, datumDescription: me.datumDescription, type: me.type, link: me.link, playerEmbedURL: me.playerEmbedURL, duration: me.duration, width: me.width, language: me.language, height: me.height, embed: me.embed, createdTime: me.createdTime, modifiedTime: me.modifiedTime, releaseTime: me.releaseTime, contentRating: me.contentRating, contentRatingClass: me.contentRatingClass, ratingModLocked: me.ratingModLocked, license: me.license, privacy: me.privacy, pictures: me.pictures, tags: me.tags, stats: me.stats, categories: me.categories, uploader: me.uploader, metadata: me.metadata, user: me.user, play: me.play, app: me.app, status: me.status, resourceKey: me.resourceKey, upload: me.upload, transcode: me.transcode, isPlayable: me.isPlayable, hasAudio: me.hasAudio, vod: me.vod)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        datumDescription: String?? = nil,
        type: DatumType?? = nil,
        link: String?? = nil,
        playerEmbedURL: String?? = nil,
        duration: Int?? = nil,
        width: Int?? = nil,
        language: String?? = nil,
        height: Int?? = nil,
        embed: EmbedClass?? = nil,
        createdTime: Date?? = nil,
        modifiedTime: Date?? = nil,
        releaseTime: Date?? = nil,
        contentRating: [ContentRating]?? = nil,
        contentRatingClass: ContentRating?? = nil,
        ratingModLocked: Bool?? = nil,
        license: String?? = nil,
        privacy: Privacy?? = nil,
        pictures: Pictures?? = nil,
        tags: [Tag]?? = nil,
        stats: Stats?? = nil,
        categories: [Category]?? = nil,
        uploader: Uploader?? = nil,
        metadata: DatumMetadata?? = nil,
        user: User?? = nil,
        play: Play?? = nil,
        app: App?? = nil,
        status: DatumStatus?? = nil,
        resourceKey: String?? = nil,
        upload: JSONNull?? = nil,
        transcode: JSONNull?? = nil,
        isPlayable: Bool?? = nil,
        hasAudio: Bool?? = nil,
        vod: VOD?? = nil
    ) -> Datum {
        return Datum(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            datumDescription: datumDescription ?? self.datumDescription,
            type: type ?? self.type,
            link: link ?? self.link,
            playerEmbedURL: playerEmbedURL ?? self.playerEmbedURL,
            duration: duration ?? self.duration,
            width: width ?? self.width,
            language: language ?? self.language,
            height: height ?? self.height,
            embed: embed ?? self.embed,
            createdTime: createdTime ?? self.createdTime,
            modifiedTime: modifiedTime ?? self.modifiedTime,
            releaseTime: releaseTime ?? self.releaseTime,
            contentRating: contentRating ?? self.contentRating,
            contentRatingClass: contentRatingClass ?? self.contentRatingClass,
            ratingModLocked: ratingModLocked ?? self.ratingModLocked,
            license: license ?? self.license,
            privacy: privacy ?? self.privacy,
            pictures: pictures ?? self.pictures,
            tags: tags ?? self.tags,
            stats: stats ?? self.stats,
            categories: categories ?? self.categories,
            uploader: uploader ?? self.uploader,
            metadata: metadata ?? self.metadata,
            user: user ?? self.user,
            play: play ?? self.play,
            app: app ?? self.app,
            status: status ?? self.status,
            resourceKey: resourceKey ?? self.resourceKey,
            upload: upload ?? self.upload,
            transcode: transcode ?? self.transcode,
            isPlayable: isPlayable ?? self.isPlayable,
            hasAudio: hasAudio ?? self.hasAudio,
            vod: vod ?? self.vod
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - App
class App: Codable {
    var name, uri: String?

    init(name: String?, uri: String?) {
        self.name = name
        self.uri = uri
    }
}

// MARK: App convenience initializers and mutators

extension App {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(App.self, from: data)
        self.init(name: me.name, uri: me.uri)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: String?? = nil,
        uri: String?? = nil
    ) -> App {
        return App(
            name: name ?? self.name,
            uri: uri ?? self.uri
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Category
class Category: Codable {
    var uri, name: String?
    var link: String?
    var topLevel, isDeprecated: Bool?
    var pictures: Pictures?
    var lastVideoFeaturedTime: Date?
    var parent: Parent?
    var metadata: CategoryMetadata?
    var subcategories: [Parent]?
    var icon: Pictures?
    var resourceKey: String?

    enum CodingKeys: String, CodingKey {
        case uri, name, link
        case topLevel = "top_level"
        case isDeprecated = "is_deprecated"
        case pictures
        case lastVideoFeaturedTime = "last_video_featured_time"
        case parent, metadata, subcategories, icon
        case resourceKey = "resource_key"
    }

    init(uri: String?, name: String?, link: String?, topLevel: Bool?, isDeprecated: Bool?, pictures: Pictures?, lastVideoFeaturedTime: Date?, parent: Parent?, metadata: CategoryMetadata?, subcategories: [Parent]?, icon: Pictures?, resourceKey: String?) {
        self.uri = uri
        self.name = name
        self.link = link
        self.topLevel = topLevel
        self.isDeprecated = isDeprecated
        self.pictures = pictures
        self.lastVideoFeaturedTime = lastVideoFeaturedTime
        self.parent = parent
        self.metadata = metadata
        self.subcategories = subcategories
        self.icon = icon
        self.resourceKey = resourceKey
    }
}

// MARK: Category convenience initializers and mutators

extension Category {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Category.self, from: data)
        self.init(uri: me.uri, name: me.name, link: me.link, topLevel: me.topLevel, isDeprecated: me.isDeprecated, pictures: me.pictures, lastVideoFeaturedTime: me.lastVideoFeaturedTime, parent: me.parent, metadata: me.metadata, subcategories: me.subcategories, icon: me.icon, resourceKey: me.resourceKey)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        link: String?? = nil,
        topLevel: Bool?? = nil,
        isDeprecated: Bool?? = nil,
        pictures: Pictures?? = nil,
        lastVideoFeaturedTime: Date?? = nil,
        parent: Parent?? = nil,
        metadata: CategoryMetadata?? = nil,
        subcategories: [Parent]?? = nil,
        icon: Pictures?? = nil,
        resourceKey: String?? = nil
    ) -> Category {
        return Category(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            link: link ?? self.link,
            topLevel: topLevel ?? self.topLevel,
            isDeprecated: isDeprecated ?? self.isDeprecated,
            pictures: pictures ?? self.pictures,
            lastVideoFeaturedTime: lastVideoFeaturedTime ?? self.lastVideoFeaturedTime,
            parent: parent ?? self.parent,
            metadata: metadata ?? self.metadata,
            subcategories: subcategories ?? self.subcategories,
            icon: icon ?? self.icon,
            resourceKey: resourceKey ?? self.resourceKey
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Pictures
class Pictures: Codable {
    var uri: String?
    var active: Bool?
    var type: PicturesType?
    var baseLink: String?
    var sizes: [Size]?
    var resourceKey: String?
    var defaultPicture: Bool?

    enum CodingKeys: String, CodingKey {
        case uri, active, type
        case baseLink = "base_link"
        case sizes
        case resourceKey = "resource_key"
        case defaultPicture = "default_picture"
    }

    init(uri: String?, active: Bool?, type: PicturesType?, baseLink: String?, sizes: [Size]?, resourceKey: String?, defaultPicture: Bool?) {
        self.uri = uri
        self.active = active
        self.type = type
        self.baseLink = baseLink
        self.sizes = sizes
        self.resourceKey = resourceKey
        self.defaultPicture = defaultPicture
    }
}

// MARK: Pictures convenience initializers and mutators

extension Pictures {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Pictures.self, from: data)
        self.init(uri: me.uri, active: me.active, type: me.type, baseLink: me.baseLink, sizes: me.sizes, resourceKey: me.resourceKey, defaultPicture: me.defaultPicture)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        active: Bool?? = nil,
        type: PicturesType?? = nil,
        baseLink: String?? = nil,
        sizes: [Size]?? = nil,
        resourceKey: String?? = nil,
        defaultPicture: Bool?? = nil
    ) -> Pictures {
        return Pictures(
            uri: uri ?? self.uri,
            active: active ?? self.active,
            type: type ?? self.type,
            baseLink: baseLink ?? self.baseLink,
            sizes: sizes ?? self.sizes,
            resourceKey: resourceKey ?? self.resourceKey,
            defaultPicture: defaultPicture ?? self.defaultPicture
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Size
class Size: Codable {
    var width, height: Int?
    var link, linkWithPlayButton: String?

    enum CodingKeys: String, CodingKey {
        case width, height, link
        case linkWithPlayButton = "link_with_play_button"
    }

    init(width: Int?, height: Int?, link: String?, linkWithPlayButton: String?) {
        self.width = width
        self.height = height
        self.link = link
        self.linkWithPlayButton = linkWithPlayButton
    }
}

// MARK: Size convenience initializers and mutators

extension Size {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Size.self, from: data)
        self.init(width: me.width, height: me.height, link: me.link, linkWithPlayButton: me.linkWithPlayButton)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        width: Int?? = nil,
        height: Int?? = nil,
        link: String?? = nil,
        linkWithPlayButton: String?? = nil
    ) -> Size {
        return Size(
            width: width ?? self.width,
            height: height ?? self.height,
            link: link ?? self.link,
            linkWithPlayButton: linkWithPlayButton ?? self.linkWithPlayButton
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum PicturesType:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case custom = "custom"
    case typeDefault = "default"
}

// MARK: - CategoryMetadata
class CategoryMetadata: Codable {
    var connections: PurpleConnections?

    init(connections: PurpleConnections?) {
        self.connections = connections
    }
}

// MARK: CategoryMetadata convenience initializers and mutators

extension CategoryMetadata {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(CategoryMetadata.self, from: data)
        self.init(connections: me.connections)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        connections: PurpleConnections?? = nil
    ) -> CategoryMetadata {
        return CategoryMetadata(
            connections: connections ?? self.connections
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - PurpleConnections
class PurpleConnections: Codable {
    var channels, groups, users, videos: CommentsClass?

    init(channels: CommentsClass?, groups: CommentsClass?, users: CommentsClass?, videos: CommentsClass?) {
        self.channels = channels
        self.groups = groups
        self.users = users
        self.videos = videos
    }
}

// MARK: PurpleConnections convenience initializers and mutators

extension PurpleConnections {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(PurpleConnections.self, from: data)
        self.init(channels: me.channels, groups: me.groups, users: me.users, videos: me.videos)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        channels: CommentsClass?? = nil,
        groups: CommentsClass?? = nil,
        users: CommentsClass?? = nil,
        videos: CommentsClass?? = nil
    ) -> PurpleConnections {
        return PurpleConnections(
            channels: channels ?? self.channels,
            groups: groups ?? self.groups,
            users: users ?? self.users,
            videos: videos ?? self.videos
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CommentsClass
class CommentsClass: Codable {
    var uri: String?
    var options: [CommentsOption]?
    var total: Int?

    init(uri: String?, options: [CommentsOption]?, total: Int?) {
        self.uri = uri
        self.options = options
        self.total = total
    }
}

// MARK: CommentsClass convenience initializers and mutators

extension CommentsClass {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(CommentsClass.self, from: data)
        self.init(uri: me.uri, options: me.options, total: me.total)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        options: [CommentsOption]?? = nil,
        total: Int?? = nil
    ) -> CommentsClass {
        return CommentsClass(
            uri: uri ?? self.uri,
            options: options ?? self.options,
            total: total ?? self.total
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CommentsOption:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case optionGET = "GET"
    case post = "POST"
}

// MARK: - Parent
class Parent: Codable {
    var uri, name: String?
    var link: String?

    init(uri: String?, name: String?, link: String?) {
        self.uri = uri
        self.name = name
        self.link = link
    }
}

// MARK: Parent convenience initializers and mutators

extension Parent {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Parent.self, from: data)
        self.init(uri: me.uri, name: me.name, link: me.link)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        link: String?? = nil
    ) -> Parent {
        return Parent(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            link: link ?? self.link
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ContentRating:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case safe = "safe"
    case unrated = "unrated"
    case nudity = "nudity"
    case explicit = "explicit"
//    case language = "language"
}

// MARK: - EmbedClass
class EmbedClass: Codable {
    var html: String?
    var badges: Badges?

    init(html: String?, badges: Badges?) {
        self.html = html
        self.badges = badges
    }
}

// MARK: EmbedClass convenience initializers and mutators

extension EmbedClass {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(EmbedClass.self, from: data)
        self.init(html: me.html, badges: me.badges)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        html: String?? = nil,
        badges: Badges?? = nil
    ) -> EmbedClass {
        return EmbedClass(
            html: html ?? self.html,
            badges: badges ?? self.badges
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Badges
class Badges: Codable {
    var hdr: Bool?
    var live: Live?
    var staffPick: StaffPick?
    var vod, weekendChallenge: Bool?

    enum CodingKeys: String, CodingKey {
        case hdr, live
        case staffPick = "staff_pick"
        case vod
        case weekendChallenge = "weekend_challenge"
    }

    init(hdr: Bool?, live: Live?, staffPick: StaffPick?, vod: Bool?, weekendChallenge: Bool?) {
        self.hdr = hdr
        self.live = live
        self.staffPick = staffPick
        self.vod = vod
        self.weekendChallenge = weekendChallenge
    }
}

// MARK: Badges convenience initializers and mutators

extension Badges {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Badges.self, from: data)
        self.init(hdr: me.hdr, live: me.live, staffPick: me.staffPick, vod: me.vod, weekendChallenge: me.weekendChallenge)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        hdr: Bool?? = nil,
        live: Live?? = nil,
        staffPick: StaffPick?? = nil,
        vod: Bool?? = nil,
        weekendChallenge: Bool?? = nil
    ) -> Badges {
        return Badges(
            hdr: hdr ?? self.hdr,
            live: live ?? self.live,
            staffPick: staffPick ?? self.staffPick,
            vod: vod ?? self.vod,
            weekendChallenge: weekendChallenge ?? self.weekendChallenge
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Live
class Live: Codable {
    var streaming, archived: Bool?

    init(streaming: Bool?, archived: Bool?) {
        self.streaming = streaming
        self.archived = archived
    }
}

// MARK: Live convenience initializers and mutators

extension Live {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Live.self, from: data)
        self.init(streaming: me.streaming, archived: me.archived)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        streaming: Bool?? = nil,
        archived: Bool?? = nil
    ) -> Live {
        return Live(
            streaming: streaming ?? self.streaming,
            archived: archived ?? self.archived
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - StaffPick
class StaffPick: Codable {
    var normal, bestOfTheMonth, bestOfTheYear, premiere: Bool?

    enum CodingKeys: String, CodingKey {
        case normal
        case bestOfTheMonth = "best_of_the_month"
        case bestOfTheYear = "best_of_the_year"
        case premiere
    }

    init(normal: Bool?, bestOfTheMonth: Bool?, bestOfTheYear: Bool?, premiere: Bool?) {
        self.normal = normal
        self.bestOfTheMonth = bestOfTheMonth
        self.bestOfTheYear = bestOfTheYear
        self.premiere = premiere
    }
}

// MARK: StaffPick convenience initializers and mutators

extension StaffPick {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(StaffPick.self, from: data)
        self.init(normal: me.normal, bestOfTheMonth: me.bestOfTheMonth, bestOfTheYear: me.bestOfTheYear, premiere: me.premiere)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        normal: Bool?? = nil,
        bestOfTheMonth: Bool?? = nil,
        bestOfTheYear: Bool?? = nil,
        premiere: Bool?? = nil
    ) -> StaffPick {
        return StaffPick(
            normal: normal ?? self.normal,
            bestOfTheMonth: bestOfTheMonth ?? self.bestOfTheMonth,
            bestOfTheYear: bestOfTheYear ?? self.bestOfTheYear,
            premiere: premiere ?? self.premiere
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DatumMetadata
class DatumMetadata: Codable {
    var connections: FluffyConnections?
    var interactions: Interactions?
    var isVimeoCreate, isScreenRecord: Bool?

    enum CodingKeys: String, CodingKey {
        case connections, interactions
        case isVimeoCreate = "is_vimeo_create"
        case isScreenRecord = "is_screen_record"
    }

    init(connections: FluffyConnections?, interactions: Interactions?, isVimeoCreate: Bool?, isScreenRecord: Bool?) {
        self.connections = connections
        self.interactions = interactions
        self.isVimeoCreate = isVimeoCreate
        self.isScreenRecord = isScreenRecord
    }
}

// MARK: DatumMetadata convenience initializers and mutators

extension DatumMetadata {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(DatumMetadata.self, from: data)
        self.init(connections: me.connections, interactions: me.interactions, isVimeoCreate: me.isVimeoCreate, isScreenRecord: me.isScreenRecord)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        connections: FluffyConnections?? = nil,
        interactions: Interactions?? = nil,
        isVimeoCreate: Bool?? = nil,
        isScreenRecord: Bool?? = nil
    ) -> DatumMetadata {
        return DatumMetadata(
            connections: connections ?? self.connections,
            interactions: interactions ?? self.interactions,
            isVimeoCreate: isVimeoCreate ?? self.isVimeoCreate,
            isScreenRecord: isScreenRecord ?? self.isScreenRecord
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - FluffyConnections
class FluffyConnections: Codable {
    var comments, credits, likes, pictures: CommentsClass?
    var texttracks: CommentsClass?
    var related, recommendations: Recommendations?
    var ondemand, trailer: Ondemand?
    var season: Season?

    init(comments: CommentsClass?, credits: CommentsClass?, likes: CommentsClass?, pictures: CommentsClass?, texttracks: CommentsClass?, related: Recommendations?, recommendations: Recommendations?, ondemand: Ondemand?, trailer: Ondemand?, season: Season?) {
        self.comments = comments
        self.credits = credits
        self.likes = likes
        self.pictures = pictures
        self.texttracks = texttracks
        self.related = related
        self.recommendations = recommendations
        self.ondemand = ondemand
        self.trailer = trailer
        self.season = season
    }
}

// MARK: FluffyConnections convenience initializers and mutators

extension FluffyConnections {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(FluffyConnections.self, from: data)
        self.init(comments: me.comments, credits: me.credits, likes: me.likes, pictures: me.pictures, texttracks: me.texttracks, related: me.related, recommendations: me.recommendations, ondemand: me.ondemand, trailer: me.trailer, season: me.season)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        comments: CommentsClass?? = nil,
        credits: CommentsClass?? = nil,
        likes: CommentsClass?? = nil,
        pictures: CommentsClass?? = nil,
        texttracks: CommentsClass?? = nil,
        related: Recommendations?? = nil,
        recommendations: Recommendations?? = nil,
        ondemand: Ondemand?? = nil,
        trailer: Ondemand?? = nil,
        season: Season?? = nil
    ) -> FluffyConnections {
        return FluffyConnections(
            comments: comments ?? self.comments,
            credits: credits ?? self.credits,
            likes: likes ?? self.likes,
            pictures: pictures ?? self.pictures,
            texttracks: texttracks ?? self.texttracks,
            related: related ?? self.related,
            recommendations: recommendations ?? self.recommendations,
            ondemand: ondemand ?? self.ondemand,
            trailer: trailer ?? self.trailer,
            season: season ?? self.season
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Ondemand
class Ondemand: Codable {
    var uri: String?
    var options: [CommentsOption]?
    var resourceKey: String?

    enum CodingKeys: String, CodingKey {
        case uri, options
        case resourceKey = "resource_key"
    }

    init(uri: String?, options: [CommentsOption]?, resourceKey: String?) {
        self.uri = uri
        self.options = options
        self.resourceKey = resourceKey
    }
}

// MARK: Ondemand convenience initializers and mutators

extension Ondemand {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Ondemand.self, from: data)
        self.init(uri: me.uri, options: me.options, resourceKey: me.resourceKey)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        options: [CommentsOption]?? = nil,
        resourceKey: String?? = nil
    ) -> Ondemand {
        return Ondemand(
            uri: uri ?? self.uri,
            options: options ?? self.options,
            resourceKey: resourceKey ?? self.resourceKey
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Recommendations
class Recommendations: Codable {
    var uri: String?
    var options: [RecommendationsOption]?

    init(uri: String?, options: [RecommendationsOption]?) {
        self.uri = uri
        self.options = options
    }
}

// MARK: Recommendations convenience initializers and mutators

extension Recommendations {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Recommendations.self, from: data)
        self.init(uri: me.uri, options: me.options)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        options: [RecommendationsOption]?? = nil
    ) -> Recommendations {
        return Recommendations(
            uri: uri ?? self.uri,
            options: options ?? self.options
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum RecommendationsOption:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case optionGET = "GET"
    case patch = "PATCH"
}

// MARK: - Season
class Season: Codable {
    var uri: String?
    var options: [CommentsOption]?
    var name: String?

    init(uri: String?, options: [CommentsOption]?, name: String?) {
        self.uri = uri
        self.options = options
        self.name = name
    }
}

// MARK: Season convenience initializers and mutators

extension Season {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Season.self, from: data)
        self.init(uri: me.uri, options: me.options, name: me.name)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        options: [CommentsOption]?? = nil,
        name: String?? = nil
    ) -> Season {
        return Season(
            uri: uri ?? self.uri,
            options: options ?? self.options,
            name: name ?? self.name
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Interactions
class Interactions: Codable {
    var report: Report?
    var rent, buy, subscribe: JSONNull?

    init(report: Report?, rent: JSONNull?, buy: JSONNull?, subscribe: JSONNull?) {
        self.report = report
        self.rent = rent
        self.buy = buy
        self.subscribe = subscribe
    }
}

// MARK: Interactions convenience initializers and mutators

extension Interactions {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Interactions.self, from: data)
        self.init(report: me.report, rent: me.rent, buy: me.buy, subscribe: me.subscribe)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        report: Report?? = nil,
        rent: JSONNull?? = nil,
        buy: JSONNull?? = nil,
        subscribe: JSONNull?? = nil
    ) -> Interactions {
        return Interactions(
            report: report ?? self.report,
            rent: rent ?? self.rent,
            buy: buy ?? self.buy,
            subscribe: subscribe ?? self.subscribe
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Report
class Report: Codable {
    var uri: String?
    var options: [CommentsOption]?
    var reason: [Reason]?

    init(uri: String?, options: [CommentsOption]?, reason: [Reason]?) {
        self.uri = uri
        self.options = options
        self.reason = reason
    }
}

// MARK: Report convenience initializers and mutators

extension Report {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Report.self, from: data)
        self.init(uri: me.uri, options: me.options, reason: me.reason)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        options: [CommentsOption]?? = nil,
        reason: [Reason]?? = nil
    ) -> Report {
        return Report(
            uri: uri ?? self.uri,
            options: options ?? self.options,
            reason: reason ?? self.reason
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Reason:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case causesHarm = "causes harm"
    case csam = "csam"
    case harassment = "harassment"
    case incorrectRating = "incorrect rating"
    case pornographic = "pornographic"
    case ripoff = "ripoff"
    case spam = "spam"
}

// MARK: - Play
class Play: Codable {
    var status: PlayStatus?

    init(status: PlayStatus?) {
        self.status = status
    }
}

// MARK: Play convenience initializers and mutators

extension Play {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Play.self, from: data)
        self.init(status: me.status)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        status: PlayStatus?? = nil
    ) -> Play {
        return Play(
            status: status ?? self.status
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum PlayStatus:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case playable = "playable"
    case purchaseRequired = "purchase_required"
}

// MARK: - Privacy
class Privacy: Codable {
    var view: View?
    var embed: EmbedEnum?
    var download, add: Bool?
    var comments: CommentsEnum?

    init(view: View?, embed: EmbedEnum?, download: Bool?, add: Bool?, comments: CommentsEnum?) {
        self.view = view
        self.embed = embed
        self.download = download
        self.add = add
        self.comments = comments
    }
}

// MARK: Privacy convenience initializers and mutators

extension Privacy {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Privacy.self, from: data)
        self.init(view: me.view, embed: me.embed, download: me.download, add: me.add, comments: me.comments)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        view: View?? = nil,
        embed: EmbedEnum?? = nil,
        download: Bool?? = nil,
        add: Bool?? = nil,
        comments: CommentsEnum?? = nil
    ) -> Privacy {
        return Privacy(
            view: view ?? self.view,
            embed: embed ?? self.embed,
            download: download ?? self.download,
            add: add ?? self.add,
            comments: comments ?? self.comments
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CommentsEnum:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case anybody = "anybody"
    case nobody = "nobody"
    case contacts = "contacts"
}

enum EmbedEnum:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case embedPublic = "public"
}

enum View:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case anybody = "anybody"
    case ptv = "ptv"
}

// MARK: - Stats
class Stats: Codable {
    var plays: JSONNull?

    init(plays: JSONNull?) {
        self.plays = plays
    }
}

// MARK: Stats convenience initializers and mutators

extension Stats {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Stats.self, from: data)
        self.init(plays: me.plays)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        plays: JSONNull?? = nil
    ) -> Stats {
        return Stats(
            plays: plays ?? self.plays
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum DatumStatus:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case available = "available"
}

// MARK: - Tag
class Tag: Codable {
    var uri, name, tag, canonical: String?
    var metadata: TagMetadata?
    var resourceKey: String?

    enum CodingKeys: String, CodingKey {
        case uri, name, tag, canonical, metadata
        case resourceKey = "resource_key"
    }

    init(uri: String?, name: String?, tag: String?, canonical: String?, metadata: TagMetadata?, resourceKey: String?) {
        self.uri = uri
        self.name = name
        self.tag = tag
        self.canonical = canonical
        self.metadata = metadata
        self.resourceKey = resourceKey
    }
}

// MARK: Tag convenience initializers and mutators

extension Tag {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Tag.self, from: data)
        self.init(uri: me.uri, name: me.name, tag: me.tag, canonical: me.canonical, metadata: me.metadata, resourceKey: me.resourceKey)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        tag: String?? = nil,
        canonical: String?? = nil,
        metadata: TagMetadata?? = nil,
        resourceKey: String?? = nil
    ) -> Tag {
        return Tag(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            tag: tag ?? self.tag,
            canonical: canonical ?? self.canonical,
            metadata: metadata ?? self.metadata,
            resourceKey: resourceKey ?? self.resourceKey
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - TagMetadata
class TagMetadata: Codable {
    var connections: TentacledConnections?

    init(connections: TentacledConnections?) {
        self.connections = connections
    }
}

// MARK: TagMetadata convenience initializers and mutators

extension TagMetadata {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TagMetadata.self, from: data)
        self.init(connections: me.connections)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        connections: TentacledConnections?? = nil
    ) -> TagMetadata {
        return TagMetadata(
            connections: connections ?? self.connections
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - TentacledConnections
class TentacledConnections: Codable {
    var videos: CommentsClass?

    init(videos: CommentsClass?) {
        self.videos = videos
    }
}

// MARK: TentacledConnections convenience initializers and mutators

extension TentacledConnections {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(TentacledConnections.self, from: data)
        self.init(videos: me.videos)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        videos: CommentsClass?? = nil
    ) -> TentacledConnections {
        return TentacledConnections(
            videos: videos ?? self.videos
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum DatumType:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case video = "video"
}

// MARK: - Uploader
class Uploader: Codable {
    var pictures: Pictures?

    init(pictures: Pictures?) {
        self.pictures = pictures
    }
}

// MARK: Uploader convenience initializers and mutators

extension Uploader {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Uploader.self, from: data)
        self.init(pictures: me.pictures)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        pictures: Pictures?? = nil
    ) -> Uploader {
        return Uploader(
            pictures: pictures ?? self.pictures
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - User
class User: Codable {
    var uri, name: String?
    var link: String?
    var capabilities: Capabilities?
    var location: String?
    var gender: Gender?
    var bio, shortBio: String?
    var createdTime: Date?
    var pictures: Pictures?
    var websites: [Website]?
    var metadata: UserMetadata?
    var locationDetails: LocationDetails?
    var skills: [App]?
    var availableForHire, canWorkRemotely: Bool?
    var resourceKey: String?
    var account: Account?

    enum CodingKeys: String, CodingKey {
        case uri, name, link, capabilities, location, gender, bio
        case shortBio = "short_bio"
        case createdTime = "created_time"
        case pictures, websites, metadata
        case locationDetails = "location_details"
        case skills
        case availableForHire = "available_for_hire"
        case canWorkRemotely = "can_work_remotely"
        case resourceKey = "resource_key"
        case account
    }

    init(uri: String?, name: String?, link: String?, capabilities: Capabilities?, location: String?, gender: Gender?, bio: String?, shortBio: String?, createdTime: Date?, pictures: Pictures?, websites: [Website]?, metadata: UserMetadata?, locationDetails: LocationDetails?, skills: [App]?, availableForHire: Bool?, canWorkRemotely: Bool?, resourceKey: String?, account: Account?) {
        self.uri = uri
        self.name = name
        self.link = link
        self.capabilities = capabilities
        self.location = location
        self.gender = gender
        self.bio = bio
        self.shortBio = shortBio
        self.createdTime = createdTime
        self.pictures = pictures
        self.websites = websites
        self.metadata = metadata
        self.locationDetails = locationDetails
        self.skills = skills
        self.availableForHire = availableForHire
        self.canWorkRemotely = canWorkRemotely
        self.resourceKey = resourceKey
        self.account = account
    }
}

// MARK: User convenience initializers and mutators

extension User {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(User.self, from: data)
        self.init(uri: me.uri, name: me.name, link: me.link, capabilities: me.capabilities, location: me.location, gender: me.gender, bio: me.bio, shortBio: me.shortBio, createdTime: me.createdTime, pictures: me.pictures, websites: me.websites, metadata: me.metadata, locationDetails: me.locationDetails, skills: me.skills, availableForHire: me.availableForHire, canWorkRemotely: me.canWorkRemotely, resourceKey: me.resourceKey, account: me.account)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        link: String?? = nil,
        capabilities: Capabilities?? = nil,
        location: String?? = nil,
        gender: Gender?? = nil,
        bio: String?? = nil,
        shortBio: String?? = nil,
        createdTime: Date?? = nil,
        pictures: Pictures?? = nil,
        websites: [Website]?? = nil,
        metadata: UserMetadata?? = nil,
        locationDetails: LocationDetails?? = nil,
        skills: [App]?? = nil,
        availableForHire: Bool?? = nil,
        canWorkRemotely: Bool?? = nil,
        resourceKey: String?? = nil,
        account: Account?? = nil
    ) -> User {
        return User(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            link: link ?? self.link,
            capabilities: capabilities ?? self.capabilities,
            location: location ?? self.location,
            gender: gender ?? self.gender,
            bio: bio ?? self.bio,
            shortBio: shortBio ?? self.shortBio,
            createdTime: createdTime ?? self.createdTime,
            pictures: pictures ?? self.pictures,
            websites: websites ?? self.websites,
            metadata: metadata ?? self.metadata,
            locationDetails: locationDetails ?? self.locationDetails,
            skills: skills ?? self.skills,
            availableForHire: availableForHire ?? self.availableForHire,
            canWorkRemotely: canWorkRemotely ?? self.canWorkRemotely,
            resourceKey: resourceKey ?? self.resourceKey,
            account: account ?? self.account
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Account:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case basic = "basic"
    case plus = "plus"
    case pro = "pro"
    case business = "business"
    case live_premium = "live_premium"
}

// MARK: - Capabilities
class Capabilities: Codable {
    var hasLiveSubscription, hasEnterpriseLihp, hasSvvTimecodedComments: Bool?

    init(hasLiveSubscription: Bool?, hasEnterpriseLihp: Bool?, hasSvvTimecodedComments: Bool?) {
        self.hasLiveSubscription = hasLiveSubscription
        self.hasEnterpriseLihp = hasEnterpriseLihp
        self.hasSvvTimecodedComments = hasSvvTimecodedComments
    }
}

// MARK: Capabilities convenience initializers and mutators

extension Capabilities {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Capabilities.self, from: data)
        self.init(hasLiveSubscription: me.hasLiveSubscription, hasEnterpriseLihp: me.hasEnterpriseLihp, hasSvvTimecodedComments: me.hasSvvTimecodedComments)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        hasLiveSubscription: Bool?? = nil,
        hasEnterpriseLihp: Bool?? = nil,
        hasSvvTimecodedComments: Bool?? = nil
    ) -> Capabilities {
        return Capabilities(
            hasLiveSubscription: hasLiveSubscription ?? self.hasLiveSubscription,
            hasEnterpriseLihp: hasEnterpriseLihp ?? self.hasEnterpriseLihp,
            hasSvvTimecodedComments: hasSvvTimecodedComments ?? self.hasSvvTimecodedComments
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Gender:  String, Codable ,CaseIterableDefaultsLast{
    case unknown
    case empty = ""
    case f = "f"
    case m = "m"
    case n = "n"
    case o = "o"
}

// MARK: - LocationDetails
class LocationDetails: Codable {
    var formattedAddress: String?
    var latitude, longitude: Double?
    var city, state: String?
    var stateISOCode, country, countryISOCode: String?

    enum CodingKeys: String, CodingKey {
        case formattedAddress = "formatted_address"
        case latitude, longitude, city, state
        case stateISOCode = "state_iso_code"
        case country
        case countryISOCode = "country_iso_code"
    }

    init(formattedAddress: String?, latitude: Double?, longitude: Double?, city: String?, state: String?, stateISOCode: String?, country: String?, countryISOCode: String?) {
        self.formattedAddress = formattedAddress
        self.latitude = latitude
        self.longitude = longitude
        self.city = city
        self.state = state
        self.stateISOCode = stateISOCode
        self.country = country
        self.countryISOCode = countryISOCode
    }
}

// MARK: LocationDetails convenience initializers and mutators

extension LocationDetails {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(LocationDetails.self, from: data)
        self.init(formattedAddress: me.formattedAddress, latitude: me.latitude, longitude: me.longitude, city: me.city, state: me.state, stateISOCode: me.stateISOCode, country: me.country, countryISOCode: me.countryISOCode)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        formattedAddress: String?? = nil,
        latitude: Double?? = nil,
        longitude: Double?? = nil,
        city: String?? = nil,
        state: String?? = nil,
        stateISOCode: String?? = nil,
        country: String?? = nil,
        countryISOCode: String?? = nil
    ) -> LocationDetails {
        return LocationDetails(
            formattedAddress: formattedAddress ?? self.formattedAddress,
            latitude: latitude ?? self.latitude,
            longitude: longitude ?? self.longitude,
            city: city ?? self.city,
            state: state ?? self.state,
            stateISOCode: stateISOCode ?? self.stateISOCode,
            country: country ?? self.country,
            countryISOCode: countryISOCode ?? self.countryISOCode
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UserMetadata
class UserMetadata: Codable {
    var connections: StickyConnections?

    init(connections: StickyConnections?) {
        self.connections = connections
    }
}

// MARK: UserMetadata convenience initializers and mutators

extension UserMetadata {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(UserMetadata.self, from: data)
        self.init(connections: me.connections)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        connections: StickyConnections?? = nil
    ) -> UserMetadata {
        return UserMetadata(
            connections: connections ?? self.connections
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - StickyConnections
class StickyConnections: Codable {
    var albums, appearances, channels: CommentsClass?
    var feed: Recommendations?
    var followers, following, groups, likes: CommentsClass?
    var membership: Recommendations?
    var moderatedChannels, portfolios, videos, shared: CommentsClass?
    var pictures: CommentsClass?
    var foldersRoot: Recommendations?
    var teams, permissionPolicies: CommentsClass?

    enum CodingKeys: String, CodingKey {
        case albums, appearances, channels, feed, followers, following, groups, likes, membership
        case moderatedChannels = "moderated_channels"
        case portfolios, videos, shared, pictures
        case foldersRoot = "folders_root"
        case teams
        case permissionPolicies = "permission_policies"
    }

    init(albums: CommentsClass?, appearances: CommentsClass?, channels: CommentsClass?, feed: Recommendations?, followers: CommentsClass?, following: CommentsClass?, groups: CommentsClass?, likes: CommentsClass?, membership: Recommendations?, moderatedChannels: CommentsClass?, portfolios: CommentsClass?, videos: CommentsClass?, shared: CommentsClass?, pictures: CommentsClass?, foldersRoot: Recommendations?, teams: CommentsClass?, permissionPolicies: CommentsClass?) {
        self.albums = albums
        self.appearances = appearances
        self.channels = channels
        self.feed = feed
        self.followers = followers
        self.following = following
        self.groups = groups
        self.likes = likes
        self.membership = membership
        self.moderatedChannels = moderatedChannels
        self.portfolios = portfolios
        self.videos = videos
        self.shared = shared
        self.pictures = pictures
        self.foldersRoot = foldersRoot
        self.teams = teams
        self.permissionPolicies = permissionPolicies
    }
}

// MARK: StickyConnections convenience initializers and mutators

extension StickyConnections {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(StickyConnections.self, from: data)
        self.init(albums: me.albums, appearances: me.appearances, channels: me.channels, feed: me.feed, followers: me.followers, following: me.following, groups: me.groups, likes: me.likes, membership: me.membership, moderatedChannels: me.moderatedChannels, portfolios: me.portfolios, videos: me.videos, shared: me.shared, pictures: me.pictures, foldersRoot: me.foldersRoot, teams: me.teams, permissionPolicies: me.permissionPolicies)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        albums: CommentsClass?? = nil,
        appearances: CommentsClass?? = nil,
        channels: CommentsClass?? = nil,
        feed: Recommendations?? = nil,
        followers: CommentsClass?? = nil,
        following: CommentsClass?? = nil,
        groups: CommentsClass?? = nil,
        likes: CommentsClass?? = nil,
        membership: Recommendations?? = nil,
        moderatedChannels: CommentsClass?? = nil,
        portfolios: CommentsClass?? = nil,
        videos: CommentsClass?? = nil,
        shared: CommentsClass?? = nil,
        pictures: CommentsClass?? = nil,
        foldersRoot: Recommendations?? = nil,
        teams: CommentsClass?? = nil,
        permissionPolicies: CommentsClass?? = nil
    ) -> StickyConnections {
        return StickyConnections(
            albums: albums ?? self.albums,
            appearances: appearances ?? self.appearances,
            channels: channels ?? self.channels,
            feed: feed ?? self.feed,
            followers: followers ?? self.followers,
            following: following ?? self.following,
            groups: groups ?? self.groups,
            likes: likes ?? self.likes,
            membership: membership ?? self.membership,
            moderatedChannels: moderatedChannels ?? self.moderatedChannels,
            portfolios: portfolios ?? self.portfolios,
            videos: videos ?? self.videos,
            shared: shared ?? self.shared,
            pictures: pictures ?? self.pictures,
            foldersRoot: foldersRoot ?? self.foldersRoot,
            teams: teams ?? self.teams,
            permissionPolicies: permissionPolicies ?? self.permissionPolicies
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Website
class Website: Codable {
    var uri: String?
    var name: String?
    var link: String?
    var type: String?
    var websiteDescription: String?

    enum CodingKeys: String, CodingKey {
        case uri, name, link, type
        case websiteDescription = "description"
    }

    init(uri: String?, name: String?, link: String?, type: String?, websiteDescription: String?) {
        self.uri = uri
        self.name = name
        self.link = link
        self.type = type
        self.websiteDescription = websiteDescription
    }
}

// MARK: Website convenience initializers and mutators

extension Website {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Website.self, from: data)
        self.init(uri: me.uri, name: me.name, link: me.link, type: me.type, websiteDescription: me.websiteDescription)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String?? = nil,
        name: String?? = nil,
        link: String?? = nil,
        type: String?? = nil,
        websiteDescription: String?? = nil
    ) -> Website {
        return Website(
            uri: uri ?? self.uri,
            name: name ?? self.name,
            link: link ?? self.link,
            type: type ?? self.type,
            websiteDescription: websiteDescription ?? self.websiteDescription
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - VOD
class VOD: Codable {
    var id: Int?

    init(id: Int?) {
        self.id = id
    }
}

// MARK: VOD convenience initializers and mutators

extension VOD {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(VOD.self, from: data)
        self.init(id: me.id)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int?? = nil
    ) -> VOD {
        return VOD(
            id: id ?? self.id
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Paging
class Paging: Codable {
    var next: String?
    var previous: JSONNull?
    var first, last: String?

    init(next: String?, previous: JSONNull?, first: String?, last: String?) {
        self.next = next
        self.previous = previous
        self.first = first
        self.last = last
    }
}

// MARK: Paging convenience initializers and mutators

extension Paging {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Paging.self, from: data)
        self.init(next: me.next, previous: me.previous, first: me.first, last: me.last)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        next: String?? = nil,
        previous: JSONNull?? = nil,
        first: String?? = nil,
        last: String?? = nil
    ) -> Paging {
        return Paging(
            next: next ?? self.next,
            previous: previous ?? self.previous,
            first: first ?? self.first,
            last: last ?? self.last
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
    
}
