.class public final synthetic Lcom/miui/calendar/search/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/search/SearchResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/search/SearchResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/search/m;->a:Lcom/miui/calendar/search/SearchResultFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/search/m;->a:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/calendar/search/SearchResultFragment$d;->d(Lcom/miui/calendar/search/SearchResultFragment;)V

    return-void
.end method
