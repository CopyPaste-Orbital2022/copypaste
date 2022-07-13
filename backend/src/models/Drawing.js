// Schema -> Drawing: id, user_id, drawing_name, created_date, strokes
// Create Model -> Drawing 

const mongoose = require('mongoose');
var ObjectId = require('mongodb').ObjectId;

// in case need to use int64
// require('mongoose-long')(mongoose);
// const {Types: {Long}} = mongoose;

const drawingSchema = mongoose.Schema({
    user_id: {
        type: ObjectId,
        required: true,
        //not unique because one user can have multiple drawings
    },
    drawing_name: {
        type: String,
        required: true,
    },
    created_date: {
        type: Date,
        default: Date.now,
    },
    strokes: [{
        points: [{
            dx: {
               type: mongoose.Schema.Types.Decimal128,
               required: true,
            },
            dy: {
                type: mongoose.Schema.Types.Decimal128,
                required: true,
            },
            pressue: {
                type: mongoose.Schema.Types.Decimal128,
                required: true,
            }
        }],
        border_points: [{
            dx: {
               type: mongoose.Schema.Types.Decimal128,
               required: true,
            },
            dy: {
                type: mongoose.Schema.Types.Decimal128,
                required: true,
            },
            pressue: {
                type: mongoose.Schema.Types.Decimal128,
                required: true,
            }
        }],
        color: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        thinning: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        smoothing: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        streamline: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        taper_start: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        taper_end: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        cap_start: {
            type: Boolean,
            required: true,
        },
        cap_end: {
            type: Boolean,
            required: true,
        },
        size: {
            type: mongoose.Schema.Types.Decimal128,
            required: true,
        },
        simulate_pressure: {
            type: Boolean,
            required: true,
        }
    }]
})

module.exports = mongoose.model("Drawing", drawingSchema);