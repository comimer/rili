.class public final synthetic Lnet/fortuna/ical4j/model/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/d;->a:Ljava/util/List;

    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/Component;->f(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p1

    return p1
.end method
