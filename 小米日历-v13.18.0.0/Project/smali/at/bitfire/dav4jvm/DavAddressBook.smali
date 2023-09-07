.class public final Lat/bitfire/dav4jvm/DavAddressBook;
.super Lat/bitfire/dav4jvm/DavCollection;
.source "DavAddressBook.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/DavAddressBook$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B#\u0008\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J*\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002j\u0002`\u0006J@\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00082\u0006\u0010\u000e\u001a\u00020\r2\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002j\u0002`\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/DavAddressBook;",
        "Lat/bitfire/dav4jvm/DavCollection;",
        "Lkotlin/Function2;",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        "Lat/bitfire/dav4jvm/DavResponseCallback;",
        "callback",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "addressbookQuery",
        "Lokhttp3/t;",
        "urls",
        "",
        "vCard4",
        "multiget",
        "Lokhttp3/x;",
        "httpClient",
        "location",
        "Ljava/util/logging/Logger;",
        "log",
        "<init>",
        "(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V",
        "Companion",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final ADDRESSBOOK_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

.field private static final ADDRESSBOOK_QUERY:Lat/bitfire/dav4jvm/Property$Name;

.field public static final Companion:Lat/bitfire/dav4jvm/DavAddressBook$Companion;

.field private static final FILTER:Lat/bitfire/dav4jvm/Property$Name;

.field private static final MIME_VCARD3_UTF8:Lokhttp3/v;

.field private static final MIME_VCARD4:Lokhttp3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/DavAddressBook$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/DavAddressBook$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->Companion:Lat/bitfire/dav4jvm/DavAddressBook$Companion;

    .line 8
    .line 9
    sget-object v0, Lokhttp3/v;->g:Lokhttp3/v$a;

    .line 10
    .line 11
    const-string v1, "text/vcard;charset=utf-8"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lat/bitfire/dav4jvm/DavAddressBook;->MIME_VCARD3_UTF8:Lokhttp3/v;

    .line 18
    .line 19
    const-string v1, "text/vcard;version=4.0"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->MIME_VCARD4:Lokhttp3/v;

    .line 26
    .line 27
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 28
    .line 29
    const-string v1, "urn:ietf:params:xml:ns:carddav"

    .line 30
    .line 31
    const-string v2, "addressbook-query"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_QUERY:Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 39
    .line 40
    const-string v2, "addressbook-multiget"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 48
    .line 49
    const-string v2, "filter"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->FILTER:Lat/bitfire/dav4jvm/Property$Name;

    .line 55
    .line 56
    return-void
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/DavAddressBook;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavCollection;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {p3}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavAddressBook;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public static final synthetic access$getADDRESSBOOK_MULTIGET$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$getADDRESSBOOK_QUERY$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_QUERY:Lat/bitfire/dav4jvm/Property$Name;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$getFILTER$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->FILTER:Lat/bitfire/dav4jvm/Property$Name;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$getMIME_VCARD3_UTF8$cp()Lokhttp3/v;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->MIME_VCARD3_UTF8:Lokhttp3/v;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$getMIME_VCARD4$cp()Lokhttp3/v;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavAddressBook;->MIME_VCARD4:Lokhttp3/v;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public final addressbookQuery(Lw7/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 7
    .line 8
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/StringWriter;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "UTF-8"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const-string v5, "DAV:"

    .line 29
    .line 30
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "CARD"

    .line 34
    .line 35
    const-string v5, "urn:ietf:params:xml:ns:carddav"

    .line 36
    .line 37
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_QUERY:Lat/bitfire/dav4jvm/Property$Name;

    .line 41
    .line 42
    sget-object v5, Lat/bitfire/dav4jvm/DavAddressBook$addressbookQuery$1;->INSTANCE:Lat/bitfire/dav4jvm/DavAddressBook$addressbookQuery$1;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v3, v5}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lat/bitfire/dav4jvm/DavAddressBook$addressbookQuery$2;

    .line 51
    .line 52
    invoke-direct {v0, p0, v2}, Lat/bitfire/dav4jvm/DavAddressBook$addressbookQuery$2;-><init>(Lat/bitfire/dav4jvm/DavAddressBook;Ljava/io/StringWriter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {v0, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public final multiget(Ljava/util/List;ZLw7/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/t;",
            ">;Z",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "urls"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 12
    .line 13
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/StringWriter;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "UTF-8"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    const-string v5, "DAV:"

    .line 34
    .line 35
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "CARD"

    .line 39
    .line 40
    const-string v5, "urn:ietf:params:xml:ns:carddav"

    .line 41
    .line 42
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lat/bitfire/dav4jvm/DavAddressBook;->ADDRESSBOOK_MULTIGET:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v5, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;

    .line 48
    .line 49
    invoke-direct {v5, p2, p1}, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;-><init>(ZLjava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v3, v5}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lat/bitfire/dav4jvm/DavAddressBook$multiget$2;

    .line 59
    .line 60
    invoke-direct {p1, p0, v2}, Lat/bitfire/dav4jvm/DavAddressBook$multiget$2;-><init>(Lat/bitfire/dav4jvm/DavAddressBook;Ljava/io/StringWriter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {p1, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :catchall_0
    move-exception p2

    .line 76
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :catchall_1
    move-exception p3

    .line 78
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p3
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method
