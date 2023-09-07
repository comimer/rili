.class public Lnet/fortuna/ical4j/model/property/Transp;
.super Lnet/fortuna/ical4j/model/Property;
.source "Transp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Transp$Factory;,
        Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;
    }
.end annotation


# static fields
.field public static final OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

.field public static final TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

.field private static final serialVersionUID:J = 0x34c1919b72f1522eL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;

    .line 2
    .line 3
    const-string v1, "OPAQUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Transp$1;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;

    .line 12
    .line 13
    const-string v1, "TRANSPARENT"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/property/Transp$ImmutableTransp;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Transp$1;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Transp$Factory;-><init>()V

    const-string v1, "TRANSP"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Transp$Factory;-><init>()V

    const-string v1, "TRANSP"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/Transp$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Transp$Factory;-><init>()V

    const-string v1, "TRANSP"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

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

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Transp;->value:Ljava/lang/String;

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

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
