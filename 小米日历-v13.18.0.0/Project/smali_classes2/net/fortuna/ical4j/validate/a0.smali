.class public final synthetic Lnet/fortuna/ical4j/validate/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/validate/a0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/validate/a0;->a:Ljava/lang/String;

    check-cast p1, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/validate/PropertyValidator;->j(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Z

    move-result p1

    return p1
.end method
