.class public Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;
.super Ljava/lang/Object;
.source "BySetPosRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/transform/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/transform/Transformer<",
        "Lnet/fortuna/ical4j/model/DateList;",
        ">;"
    }
.end annotation


# instance fields
.field private final setPosList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/NumberList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;->transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 5

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v1

    .line 6
    iget-object v2, p0, Lnet/fortuna/ical4j/transform/recurrence/BySetPosRule;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 8
    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_0

    :cond_2
    if-gez v3, :cond_1

    neg-int v4, v1

    if-lt v3, v4, :cond_1

    add-int/2addr v3, v1

    .line 9
    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/DateList;->get(I)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
