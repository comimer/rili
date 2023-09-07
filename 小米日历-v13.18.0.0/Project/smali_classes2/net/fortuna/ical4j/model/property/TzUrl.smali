.class public Lnet/fortuna/ical4j/model/property/TzUrl;
.super Lnet/fortuna/ical4j/model/Property;
.source "TzUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/TzUrl$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e5f5dcd4fcabb5eL


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;-><init>()V

    const-string v1, "TZURL"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;-><init>()V

    const-string v1, "TZURL"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/TzUrl;->uri:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;-><init>()V

    const-string v1, "TZURL"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/TzUrl;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzUrl$Factory;-><init>()V

    const-string v1, "TZURL"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 7
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/TzUrl;->uri:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzUrl;->uri:Ljava/net/URI;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/TzUrl;->getUri()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final setUri(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/TzUrl;->uri:Ljava/net/URI;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/TzUrl;->uri:Ljava/net/URI;

    .line 6
    .line 7
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
