.class public final synthetic Lnet/fortuna/ical4j/validate/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lnet/fortuna/ical4j/model/Component;


# direct methods
.method public synthetic constructor <init>(ZLnet/fortuna/ical4j/model/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/fortuna/ical4j/validate/i;->a:Z

    iput-object p2, p0, Lnet/fortuna/ical4j/validate/i;->b:Lnet/fortuna/ical4j/model/Component;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lnet/fortuna/ical4j/validate/i;->a:Z

    iget-object v1, p0, Lnet/fortuna/ical4j/validate/i;->b:Lnet/fortuna/ical4j/model/Component;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/validate/ComponentValidator;->f(ZLnet/fortuna/ical4j/model/Component;Ljava/lang/String;)V

    return-void
.end method
