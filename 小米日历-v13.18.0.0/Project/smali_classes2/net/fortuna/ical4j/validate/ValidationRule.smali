.class public Lnet/fortuna/ical4j/validate/ValidationRule;
.super Ljava/lang/Object;
.source "ValidationRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;
    }
.end annotation


# instance fields
.field private final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final relaxedModeSupported:Z

.field private final type:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;


# direct methods
.method public varargs constructor <init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;Z[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->type:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    .line 4
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->instances:Ljava/util/List;

    .line 5
    iput-boolean p2, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->relaxedModeSupported:Z

    return-void
.end method

.method public varargs constructor <init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/validate/ValidationRule;-><init>(Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->instances:Ljava/util/List;

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

.method public getType()Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->type:Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

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

.method public isRelaxedModeSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/fortuna/ical4j/validate/ValidationRule;->relaxedModeSupported:Z

    .line 2
    .line 3
    return v0
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
