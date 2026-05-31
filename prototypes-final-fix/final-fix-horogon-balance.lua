-- Final technology normalization runs after data-updates, so reapply Horogon counts last.
if horogon_apply_tier_technology_counts then
    horogon_apply_tier_technology_counts()
end
