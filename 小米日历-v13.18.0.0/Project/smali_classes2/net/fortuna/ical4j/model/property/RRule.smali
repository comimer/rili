.class public Lnet/fortuna/ical4j/model/property/RRule;
.super Lnet/fortuna/ical4j/model/Property;
.source "RRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/RRule$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f83466ac47dd04cL


# instance fields
.field private recur:Lnet/fortuna/ical4j/model/Recur;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const-string v1, "RRULE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/Recur;

    sget-object v1, Lnet/fortuna/ical4j/model/Recur$Frequency;->DAILY:Lnet/fortuna/ical4j/model/Recur$Frequency;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Recur;-><init>(Lnet/fortuna/ical4j/model/Recur$Frequency;I)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const-string v1, "RRULE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/RRule;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const-string v1, "RRULE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 6
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/RRule;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Recur;)V
    .locals 2

    .line 9
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const-string v1, "RRULE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 10
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/RRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Recur;)V
    .locals 2

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/RRule$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/RRule$Factory;-><init>()V

    const-string v1, "RRULE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 8
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/RRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    return-void
.end method


# virtual methods
.method public final getRecur()Lnet/fortuna/ical4j/model/Recur;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RRule;->recur:Lnet/fortuna/ical4j/model/Recur;

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
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Recur;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Recur;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Recur;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RRule;->recur:Lnet/fortuna/ical4j/model/Recur;

    .line 7
    .line 8
    return-void
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TZID"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 8
    .line 9
    .line 10
    return-void
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
