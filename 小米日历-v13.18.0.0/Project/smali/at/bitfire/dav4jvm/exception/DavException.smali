.class public Lat/bitfire/dav4jvm/exception/DavException;
.super Ljava/lang/Exception;
.source "DavException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/exception/DavException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001f2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0001\u001fB)\u0008\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR(\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0006\u001a\u0004\u0008\r\u0010\u0008R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0006\u001a\u0004\u0008\u000f\u0010\u0008R(\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\u0008R0\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lat/bitfire/dav4jvm/exception/DavException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Ljava/io/Serializable;",
        "",
        "request",
        "Ljava/lang/String;",
        "getRequest",
        "()Ljava/lang/String;",
        "setRequest",
        "(Ljava/lang/String;)V",
        "<set-?>",
        "requestBody",
        "getRequestBody",
        "response",
        "getResponse",
        "responseBody",
        "getResponseBody",
        "",
        "Lat/bitfire/dav4jvm/Error;",
        "errors",
        "Ljava/util/List;",
        "getErrors",
        "()Ljava/util/List;",
        "message",
        "",
        "ex",
        "Lokhttp3/a0;",
        "httpResponse",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;)V",
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
.field public static final Companion:Lat/bitfire/dav4jvm/exception/DavException$Companion;

.field public static final MAX_EXCERPT_SIZE:I = 0x2800


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation
.end field

.field private request:Ljava/lang/String;

.field private requestBody:Ljava/lang/String;

.field private final response:Ljava/lang/String;

.field private responseBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lat/bitfire/dav4jvm/exception/DavException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/exception/DavException$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lat/bitfire/dav4jvm/exception/DavException;->Companion:Lat/bitfire/dav4jvm/exception/DavException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lkotlin/collections/t;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lat/bitfire/dav4jvm/exception/DavException;->errors:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p3, :cond_9

    .line 4
    invoke-virtual {p3}, Lokhttp3/a0;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lat/bitfire/dav4jvm/exception/DavException;->response:Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/a0;->l0()Lokhttp3/y;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/y;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lat/bitfire/dav4jvm/exception/DavException;->request:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lokhttp3/a0;->l0()Lokhttp3/y;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/y;->a()Lokhttp3/z;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lokhttp3/z;->b()Lokhttp3/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lat/bitfire/dav4jvm/exception/DavException;->Companion:Lat/bitfire/dav4jvm/exception/DavException$Companion;

    invoke-virtual {v1, v0}, Lat/bitfire/dav4jvm/exception/DavException$Companion;->isPlainText(Lokhttp3/v;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcc/e;

    invoke-direct {v2}, Lcc/e;-><init>()V

    .line 10
    invoke-virtual {p2, v2}, Lokhttp3/z;->g(Lcc/f;)V

    .line 11
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, p2

    .line 12
    invoke-static/range {v2 .. v7}, Lcc/e;->H0(Lcc/e;Ljava/io/OutputStream;JILjava/lang/Object;)Lcc/e;

    .line 13
    sget-object v1, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/v;->c(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lat/bitfire/dav4jvm/exception/DavException;->requestBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    sget-object v0, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t read HTTP request"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t read HTTP request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lat/bitfire/dav4jvm/exception/DavException;->requestBody:Ljava/lang/String;

    .line 16
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lokhttp3/b0;->z()Lcc/g;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_7

    const/16 p2, 0x2800

    int-to-long v0, p2

    .line 17
    invoke-virtual {p3, v0, v1}, Lokhttp3/a0;->c0(J)Lokhttp3/b0;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lokhttp3/b0;->q()Lokhttp3/v;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    sget-object v1, Lat/bitfire/dav4jvm/exception/DavException;->Companion:Lat/bitfire/dav4jvm/exception/DavException$Companion;

    invoke-virtual {v1, v0}, Lat/bitfire/dav4jvm/exception/DavException$Companion;->isPlainText(Lokhttp3/v;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p2}, Lokhttp3/b0;->E()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lat/bitfire/dav4jvm/exception/DavException;->responseBody:Ljava/lang/String;

    .line 21
    :cond_3
    invoke-virtual {p3}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_7

    .line 22
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/b0;->q()Lokhttp3/v;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "application"

    const-string v2, "text"

    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/v;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/j;->u([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lokhttp3/v;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 24
    :try_start_3
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lokhttp3/b0;->e()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 26
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 28
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    invoke-virtual {v1, v0}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    sget-object v2, Lat/bitfire/dav4jvm/Error;->Companion:Lat/bitfire/dav4jvm/Error$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/Error$Companion;->getNAME()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v2, v0}, Lat/bitfire/dav4jvm/Error$Companion;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lat/bitfire/dav4jvm/exception/DavException;->errors:Ljava/util/List;

    .line 30
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 31
    :try_start_4
    sget-object v1, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Couldn\'t parse XML response"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_5
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    :cond_6
    :try_start_5
    invoke-static {p2, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {p2, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 34
    :cond_7
    :goto_3
    invoke-virtual {p3}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p1

    if-eqz p1, :cond_a

    :goto_4
    invoke-virtual {p1}, Lokhttp3/b0;->close()V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 35
    :try_start_8
    sget-object p2, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {p2}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Couldn\'t read HTTP response"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t read HTTP response: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lat/bitfire/dav4jvm/exception/DavException;->responseBody:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 37
    invoke-virtual {p3}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_4

    :goto_5
    invoke-virtual {p3}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lokhttp3/b0;->close()V

    :cond_8
    throw p1

    .line 38
    :cond_9
    iput-object p1, p0, Lat/bitfire/dav4jvm/exception/DavException;->response:Ljava/lang/String;

    :cond_a
    :goto_6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;)V

    return-void
.end method


# virtual methods
.method public final getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/DavException;->errors:Ljava/util/List;

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

.method public final getRequest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/DavException;->request:Ljava/lang/String;

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

.method public final getRequestBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/DavException;->requestBody:Ljava/lang/String;

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

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/DavException;->response:Ljava/lang/String;

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

.method public final getResponseBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/DavException;->responseBody:Ljava/lang/String;

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

.method public final setRequest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/dav4jvm/exception/DavException;->request:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
