.class public final synthetic Lnet/fortuna/ical4j/validate/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/Property;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/Property;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/validate/e;->a:Lnet/fortuna/ical4j/model/Property;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/validate/e;->a:Lnet/fortuna/ical4j/model/Property;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->d(Lnet/fortuna/ical4j/model/Property;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
