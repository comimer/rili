.class public final synthetic Lcom/miui/calendar/search/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/search/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/search/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/search/e;->a:Lcom/miui/calendar/search/f;

    iput p2, p0, Lcom/miui/calendar/search/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/search/e;->a:Lcom/miui/calendar/search/f;

    iget v1, p0, Lcom/miui/calendar/search/e;->b:I

    invoke-static {v0, v1}, Lcom/miui/calendar/search/f;->b(Lcom/miui/calendar/search/f;I)V

    return-void
.end method
