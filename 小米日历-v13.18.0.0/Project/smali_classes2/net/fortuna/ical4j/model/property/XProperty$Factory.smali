.class public Lnet/fortuna/ical4j/model/property/XProperty$Factory;
.super Lnet/fortuna/ical4j/model/Content$Factory;
.source "XProperty.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/property/XProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Content$Factory;-><init>([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/XProperty$Factory;->name:Ljava/lang/String;

    .line 11
    .line 12
    return-void
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


# virtual methods
.method public createProperty()Lnet/fortuna/ical4j/model/Property;
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/XProperty$Factory;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProperty(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/XProperty;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/property/XProperty$Factory;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lnet/fortuna/ical4j/model/property/XProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-object v0
.end method
