import { createClient } from '@supabase/supabase-js';

// Initialize Supabase client
const dburl = 'ohsyvubwgqnlwesxecnb';
const dbkey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9oc3l2dWJ3Z3FubHdlc3hlY25iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzMzNDIwODgsImV4cCI6MjA4ODkxODA4OH0.wQaXZRmoCRThU4rlcTPJjdPewiYv63K0vwYQvi91h4M';
const db = createClient(dburl, dbkey);


