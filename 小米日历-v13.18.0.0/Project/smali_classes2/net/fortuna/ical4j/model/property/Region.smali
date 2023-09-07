.class public Lnet/fortuna/ical4j/model/property/Region;
.super Lnet/fortuna/ical4j/model/Property;
.source "Region.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Escapable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Region$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6b9b34b112b0fd20L


# instance fields
.field private final validator:Lnet/fortuna/ical4j/validate/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/validate/Validator<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/property/Region;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/Region;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/Region$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Region$Factory;-><init>()V

    const-string v1, "REGION"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    new-instance p1, Lnet/fortuna/ical4j/validate/PropertyValidator;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/fortuna/ical4j/validate/ValidationRule;

    new-instance v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    sget-object v2, Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;->OneOrLess:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    const-string v3, "ABBREV"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/PropertyValidator;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Region;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Region;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Region;->value:Ljava/lang/String;

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

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Region;->value:Ljava/lang/String;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Region;->validator:Lnet/fortuna/ical4j/validate/Validator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lnet/fortuna/ical4j/validate/Validator;->validate(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
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
