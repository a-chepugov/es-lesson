const elasticsearch = require('elasticsearch');
const client = new elasticsearch.Client({
	host: 'localhost:9201',
	log: 'trace'
});

client.search({
	index: 'chat',
	type: 'doc',
	body: {
		query: {
			match_all: {}
		}
	}
});