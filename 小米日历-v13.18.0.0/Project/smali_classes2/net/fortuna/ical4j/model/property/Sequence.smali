.class public Lnet/fortuna/ical4j/model/property/Sequence;
.super Lnet/fortuna/ical4j/model/Property;
.source "Sequence.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Sequence$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/Property;",
        "Ljava/lang/Comparable<",
        "Lnet/fortuna/ical4j/model/property/Sequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x164d1d550f27bb45L


# instance fields
.field private sequenceNo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const-string v1, "SEQUENCE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const-string v1, "SEQUENCE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 8
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const-string v1, "SEQUENCE"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 4
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Sequence;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;I)V
    .locals 2

    .line 9
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const-string v1, "SEQUENCE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 10
    iput p2, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/property/Sequence$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Sequence$Factory;-><init>()V

    const-string v1, "SEQUENCE"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 6
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Sequence;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/property/Sequence;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Sequence;->compareTo(Lnet/fortuna/ical4j/model/property/Sequence;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/fortuna/ical4j/model/property/Sequence;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final getSequenceNo()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Sequence;->getSequenceNo()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lnet/fortuna/ical4j/model/property/Sequence;->sequenceNo:I

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
