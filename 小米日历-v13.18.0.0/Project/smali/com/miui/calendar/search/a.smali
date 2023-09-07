.class public final synthetic Lcom/miui/calendar/search/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/search/b;

.field public final synthetic b:Lcom/miui/calendar/util/g$j;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/search/b;Lcom/miui/calendar/util/g$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/search/a;->a:Lcom/miui/calendar/search/b;

    iput-object p2, p0, Lcom/miui/calendar/search/a;->b:Lcom/miui/calendar/util/g$j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/search/a;->a:Lcom/miui/calendar/search/b;

    iget-object v1, p0, Lcom/miui/calendar/search/a;->b:Lcom/miui/calendar/util/g$j;

    invoke-static {v0, v1}, Lcom/miui/calendar/search/b;->i(Lcom/miui/calendar/search/b;Lcom/miui/calendar/util/g$j;)V

    return-void
.end method
