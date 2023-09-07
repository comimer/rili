.class public Lnet/fortuna/ical4j/model/property/RefreshInterval;
.super Lnet/fortuna/ical4j/model/Property;
.source "RefreshInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "REFRESH-INTERVAL"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;-><init>()V

    const-string v1, "REFRESH-INTERVAL"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;-><init>()V

    const-string v1, "REFRESH-INTERVAL"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RefreshInterval;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/temporal/TemporalAmount;)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RefreshInterval$Factory;-><init>()V

    const-string v1, "REFRESH-INTERVAL"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    new-instance p1, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;-><init>(Ljava/time/temporal/TemporalAmount;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RefreshInterval;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RefreshInterval;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    invoke-static {p1}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->parse(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RefreshInterval;->duration:Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

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
