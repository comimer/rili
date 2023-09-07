.class Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;
.super Ljava/lang/Object;
.source "ByHourRule.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lnet/fortuna/ical4j/model/Date;",
        "Ljava/util/Optional<",
        "Lnet/fortuna/ical4j/model/Date;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;-><init>(Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;->apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/Date;",
            ")",
            "Ljava/util/Optional<",
            "Lnet/fortuna/ical4j/model/Date;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/fortuna/ical4j/transform/recurrence/AbstractDateExpansionRule;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule$LimitFilter;->this$0:Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;

    invoke-static {v1}, Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;->access$100(Lnet/fortuna/ical4j/transform/recurrence/ByHourRule;)Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
