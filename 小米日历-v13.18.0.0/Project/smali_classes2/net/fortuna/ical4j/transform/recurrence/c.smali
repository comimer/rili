.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/DateList;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/DateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/c;->a:Lnet/fortuna/ical4j/model/DateList;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/c;->a:Lnet/fortuna/ical4j/model/DateList;

    invoke-static {v0}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->c(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    return-object v0
.end method
